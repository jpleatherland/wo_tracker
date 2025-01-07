import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ExDatabase {
  ExDatabase._internal();

  static final ExDatabase instance = ExDatabase._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    try {
      _database = await _initDatabase();
      return _database!;
    } catch (e) {
      rethrow;
    }
  }

  Future<Database> _initDatabase() async {
    try {
      final Directory documentsDirectory =
          await getApplicationDocumentsDirectory();
      final String path = join(documentsDirectory.path, 'exercises.db');

      if (File(path).existsSync()) {
        return openDatabase(path);
      }

      // if we don't have a db in the documents directory
      // copy from the bundled db
      final ByteData data =
          await rootBundle.load(join('assets', 'exercises.db'));
      final List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return openDatabase(path);
    } catch (e) {
      log('failed to connect to database $e');
      rethrow;
    }
  }
}
