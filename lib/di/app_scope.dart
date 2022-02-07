import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sticker_creator/presentation/pages/splash_page.dart';

class AppScope extends StatelessWidget {
  const AppScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  Future<Database> _openDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = '$databasesPath/sticker.db';

    return openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE Packs (id INTEGER PRIMARY KEY, name TEXT)',
        );

        await db.execute(
          'CREATE TABLE Stickers (id INTEGER PRIMARY KEY, path TEXT, packId INTEGER)',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Database>(
      future: _openDatabase(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null) {
            return Provider.value(
              value: snapshot.data,
              child: child,
            );
          }
        }

        return const SplashPage();
      },
    );
  }
}