import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image/image.dart' as img;
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../../db.dart';
import 'image_bloc.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final DatabaseService _databaseService;
  final Connectivity _connectivity;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  bool isConnected = false;

  ImageBloc(this._databaseService)
      : _connectivity = Connectivity(),
        super(const ImageState.initial()) {
    _registerEventHandlers();
    _initialize();
  }

  void _registerEventHandlers() {
    on<StoreImage>(_onStoreImage);
    on<LoadImages>(_onLoadImages);
    on<UploadPendingImages>(_onUploadPendingImages);
    on<ConnectivityChanged>(_onConnectivityChanged);
  }

  Future<void> _initialize() async {
    _initializeConnectivitySubscription();
    add(const ImageEvent.loadImages());
  }

  void _initializeConnectivitySubscription() {
    // Listen to connectivity
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(
          (result) => add(ImageEvent.connectivityChanged(result)),
    );
    print('Connectivity subscription initialized.');
  }

  Future<void> _onStoreImage(StoreImage event, Emitter<ImageState> emit) async {
    emit(const ImageState.loading());
    try {
      final compressedFile = await _compressAndSaveImage(event.image);
      print('Image compressed and saved at ${compressedFile.path}');

      if (isConnected) {
        final uploadSuccess = await _uploadImage(compressedFile);
        if (!uploadSuccess) { //when error happen
          await _databaseService.insertImage(compressedFile.path);
          print('Failed to upload image; stored locally at ${compressedFile.path}');
        } else {
          print('Image uploaded successfully.');
        }
      } else {  //when offline
        await _databaseService.insertImage(compressedFile.path);
        print('Stored image locally at ${compressedFile.path} (offline)');
      }

      add(const ImageEvent.loadImages());
    } catch (e) {
      print('Failed to store or upload image: $e');
      emit(ImageState.error(e.toString()));
    }
  }

  Future<File> _compressAndSaveImage(File imageFile) async {
    // Read the image file as bytes
    final imageBytes = await imageFile.readAsBytes();
    final image = img.decodeImage(imageBytes);

    final resizedImage = img.copyResize(image!, width: 800);
    final compressedBytes = img.encodeJpg(resizedImage, quality: 70);

    // Save compressed image to a temporary file
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, '${DateTime.now().millisecondsSinceEpoch}_compressed.jpg'); //to generates a unique number
    final compressedFile = File(path);
    await compressedFile.writeAsBytes(Uint8List.fromList(compressedBytes));
    print('Compressed image saved at: $path');
    return compressedFile;
  }

  Future<void> _onLoadImages(LoadImages event, Emitter<ImageState> emit) async {
    // Load all images from the database and emit them
    final images = await _databaseService.getAllImages();
    final imagePaths = images.map((image) => image['path'] as String).toList();
    print('Loaded ${imagePaths.length} images from database.');
    emit(ImageState.loaded(imagePaths));
  }

  Future<void> _onUploadPendingImages(UploadPendingImages event, Emitter<ImageState> emit) async {
    // Retrieve all images marked as not uploaded (uploaded = 0)
    final pendingImages = await _databaseService.getPendingImages();
    print('Found ${pendingImages.length} pending images to upload.');

    for (var image in pendingImages) {
      final file = File(image['path']);
      final uploaded = await _uploadImage(file);
      if (uploaded) {
        await _databaseService.updateImageStatus(image['id'], 1); // Update status to uploaded
        print('Uploaded image at ${image['path']} successfully and updated status to 1.');
      } else {
        print('Failed to upload image at ${image['path']}, status remains 0.');
      }
    }
      ///////trigger it
    add(const ImageEvent.loadImages());
  }

  void _onConnectivityChanged(ConnectivityChanged event, Emitter<ImageState> emit) {
    // Update connectivity
    isConnected = event.result == ConnectivityResult.mobile || event.result == ConnectivityResult.wifi;
    print('Connectivity changed: ${isConnected ? "Connected" : "Not Connected"}');
    emit(ImageState.connectivity(isConnected));

    // If online, attempt to upload pending images
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
        return false;
      }
    } catch (e) {
      print('An error occurred while uploading image: $e');
      return false;
    }
  }

  @override
  Future<void> close() {
    // Cancel connectivity subscription when Bloc is closed
    _connectivitySubscription.cancel();
    print('Connectivity subscription cancelled.');
    return super.close();
  }
}
