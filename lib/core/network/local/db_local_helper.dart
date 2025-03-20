// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart' as sql;
// import 'package:sqflite/sqflite.dart';
//
// class SQLHelper {
//   static Future<Database> initDb() async {
//     return sql.openDatabase(
//       'products.db', // Database name
//       version: 2, // Version number
//       onCreate: (Database database, int version) async {
//         await createTable(database);
//         await createTable1(database);
//       },
//       onUpgrade: (Database db, int oldVersion, int newVersion) async {
//         if (oldVersion < 2) {
//           await createTable1(db);
//         }
//       },
//     );
//   }
//
//   static Future<void> createTable(Database database) async {
//     // description TEXT,
//     await database.execute("""
//       CREATE TABLE products(
//         id TEXT PRIMARY KEY NOT NULL,
//         title TEXT NOT NULL,
//         image TEXT,
//         quantity INTEGER NOT NULL,
//         price REAL NOT NULL
//       )
//     """);
//     debugPrint("Table Created");
//   }
//   ///////////////////////////////////////////////////////////
//   static Future<void> createTable1(Database database) async {
//     // description TEXT,
//     await database.execute("""
//       CREATE TABLE productsfav(
//         id TEXT PRIMARY KEY NOT NULL,
//         title TEXT NOT NULL,
//         image TEXT,
//         quantity INTEGER NOT NULL,
//         price REAL NOT NULL
//       )
//     """);
//     debugPrint("Table Created 1");
//   }
//
// ///////////////////////////////////////////////////////////
//   // Add a product
//   static Future<int> add(String productId, String name, String imageUrl, int quantity, double price) async {
//     final db = await SQLHelper.initDb();
//     final data = {
//       'id': productId,
//       'title': name,
//       'image': imageUrl,
//       'quantity': quantity,
//       'price': price
//     };
//     final id = await db.insert('products', data, conflictAlgorithm: ConflictAlgorithm.replace);
//     debugPrint("Product Added");
//     return id;
//   }
//   ////////////////////////////////////////////////
//   static Future<int> add1(String productId, String name, String imageUrl, int quantity, double price) async {
//     final db1 = await SQLHelper.initDb();
//     final data = {
//       'id': productId,
//       'title': name,
//       'image': imageUrl,
//       'quantity': quantity,
//       'price': price
//     };
//     final id = await db1.insert('productsfav', data, conflictAlgorithm: ConflictAlgorithm.replace);
//     debugPrint("productsfav Added");
//     return id;
//   }
// ////////////////////////////////////////////////
//   // Read all products
//   static Future<List<Map<String, dynamic>>> get() async {
//     final db = await SQLHelper.initDb();
//     return db.query('products', orderBy: "id");
//   }
//   /////////////////////////////////////////////////////////////
//   static Future<List<Map<String, dynamic>>> get1() async {
//     final db1 = await SQLHelper.initDb();
//     return db1.query('productsfav', orderBy: "id");
//   }
// ////////////////////////////////////////////////////////////////
//   // Get product by productId
//   static Future<List<Map<String, dynamic>>> getByProductId(String productId) async {
//     final db = await SQLHelper.initDb();
//     return db.query('products', where: "id = ?", whereArgs: [productId]);
//   }
//
//   // Update product
//   static Future<int> update(String productId, String name,  String imageUrl, int quantity, double price) async {
//     final db = await SQLHelper.initDb();
//     final data = {
//       'title': name,
//       'image': imageUrl,
//       'quantity': quantity,
//       'price': price
//     };
//     final result = await db.update('products', data, where: "id = ?", whereArgs: [productId]);
//     return result;
//   }
//
//   // Delete product
//   static Future<void> delete(String productId) async {
//     final db = await SQLHelper.initDb();
//     try {
//       await db.delete("products", where: "id = ?", whereArgs: [productId]);
//     } catch (err) {
//       debugPrint("Something went wrong: $err");
//     }
//   }
//   ////////////////////////////////////////////////////////
//   static Future<void> delete1(String productId) async {
//     final db1 = await SQLHelper.initDb();
//     try {
//       await db1.delete("productsfav", where: "id = ?", whereArgs: [productId]);
//     } catch (err) {
//       debugPrint("Something went wrong: $err");
//     }
//   }
// }