import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

import 'image_bloc.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  late Database database;
  final Connectivity _connectivity;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  bool isConnected = false;

  ImageBloc()
      : _connectivity = Connectivity(),
        super(const ImageState.initial()) {
    on<StoreImage>(_onStoreImage);
    on<LoadImages>(_onLoadImages);
    on<UploadPendingImages>(_onUploadPendingImages);
    on<ConnectivityChanged>(_onConnectivityChanged);

    _initialize();
  }

  Future<void> _initialize() async {
    await _initDatabase();
    _initializeConnectivitySubscription();
  }

  Future<void> _initDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'images.db');
    database = await openDatabase(
      path,
      version: 3,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE images(id INTEGER PRIMARY KEY, path TEXT, uploaded INTEGER)',
        );
      },
    );
    print('Database initialized at path: $path');
    add(const ImageEvent.loadImages());
  }

  void _initializeConnectivitySubscription() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
          add(ImageEvent.connectivityChanged(result));
        });
    print('Connectivity subscription initialized.');
  }

  Future<void> _onStoreImage(
      StoreImage event, Emitter<ImageState> emit) async {
    try {
      emit(const ImageState.loading());
      final directory = await getApplicationDocumentsDirectory();
      final path =
      join(directory.path, '${DateTime.now().millisecondsSinceEpoch}.png');
      await event.image.copy(path);
      await database.insert('images', {'path': path, 'uploaded': 0});
      print('Image stored locally at $path with uploaded status 0.');
      add(const ImageEvent.loadImages());
      if (isConnected) {
        add(const ImageEvent.uploadPendingImages());
      }
    } catch (e) {
      print('Failed to store image: $e');
      emit(ImageState.error(e.toString()));
    }
  }

  Future<void> _onLoadImages(
      LoadImages event, Emitter<ImageState> emit) async {
    final List<Map<String, dynamic>> images = await database.query('images');
    final imagePaths = images.map((image) => image['path'] as String).toList();
    print('Loaded images from database: ${imagePaths.length} images found.');
    emit(ImageState.loaded(imagePaths));
  }

  Future<void> _onUploadPendingImages(
      UploadPendingImages event, Emitter<ImageState> emit) async {
    final List<Map<String, dynamic>> images =
    await database.query('images', where: 'uploaded = ?', whereArgs: [0]);
    print('${images.length} pending images to upload.');

    for (var image in images) {
      final file = File(image['path']);
      final uploaded = await _uploadImage(file);
      if (uploaded) {
        await database.update('images', {'uploaded': 1},
            where: 'id = ?', whereArgs: [image['id']]);
        print(
            'Image at ${image['path']} uploaded successfully and status updated to 1.');
      } else {
        print('Failed to upload image at ${image['path']}, status remains 0.');
      }
    }
    add(const ImageEvent.loadImages());
  }

  void _onConnectivityChanged(
      ConnectivityChanged event, Emitter<ImageState> emit) {
    isConnected = event.result == ConnectivityResult.mobile ||
        event.result == ConnectivityResult.wifi;
    print('Connectivity changed: ${isConnected ? "Connected" : "Not Connected"}');
    emit(ImageState.connectivity(isConnected));
    if (isConnected) {
      add(const ImageEvent.uploadPendingImages());
    }
  }

  Future<bool> _uploadImage(File image) async {
    try {
      final uri = Uri.parse('https://httpbin.org/anything');
      final request = http.MultipartRequest('POST', uri);
      request.files.add(await http.MultipartFile.fromPath('file', image.path));
      final response = await request.send();

      if (response.statusCode == 200) {
        print('Server response: Upload successful for ${image.path}');
        return true;
      } else {
        print('Server response: Failed with status ${response.statusCode} for ${image.path}');
        throw HttpException(
            'Failed to upload image, server responded with ${response.statusCode}');
      }
    } catch (e) {
      print('An error occurred while uploading image: $e');
      return false;
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    print('Connectivity subscription cancelled.');
    return super.close();
  }
}
