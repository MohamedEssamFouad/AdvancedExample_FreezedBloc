import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;

  static Database? _database;

  DatabaseService._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'images.db');
    print('Initializing database at path: $path');

    // Open the database and set up the images table if not exists
    return await openDatabase(
      path,
      version: 5,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE images (
            id INTEGER PRIMARY KEY,
            path TEXT,
            uploaded INTEGER
          )
        ''');
        print('Database created with images table.');
      },
    );
  }

  // Insert a new image path with uploaded status set to 0 (not uploaded)
  Future<void> insertImage(String path) async {
    final db = await database;
    await db.insert('images', {'path': path, 'uploaded': 0});
    print('Inserted new image with path: $path, uploaded status: 0');
  }

  // Update the uploaded status of an image by its ID
  Future<void> updateImageStatus(int id, int status) async {
    final db = await database;
    await db.update(
      'images',
      {'uploaded': status},
      where: 'id = ?',
      whereArgs: [id],
    );
    print('Updated image with id $id to uploaded status: $status');
  }

  // Retrieve all images that are marked as not uploaded (uploaded = 0)
  Future<List<Map<String, dynamic>>> getPendingImages() async {
    final db = await database;
    final pendingImages = await db.query('images', where: 'uploaded = ?', whereArgs: [0]);
    print('Retrieved ${pendingImages.length} pending images for upload.');
    return pendingImages;
  }

  // Retrieve all images from the database
  Future<List<Map<String, dynamic>>> getAllImages() async {
    final db = await database;
    final allImages = await db.query('images');
    print('Retrieved ${allImages.length} images from the database.');
    return allImages;
  }
}
