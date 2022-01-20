import 'package:sqflite/sqlite_api.dart';
import 'package:sticker_creator/data/models/pack.dart';
import 'package:sticker_creator/data/repositories/packs_repository.dart';

class PackRepositoryImpl implements PackRepository {
  final Database db;
  final _dbName = 'Packs';

  PackRepositoryImpl({
    required this.db,
  });

  @override
  Future<List<Pack>> getAllPacks() async {
    final packsMaps = await db.rawQuery('SELECT * FROM $_dbName');
    if (packsMaps.isEmpty) {
      return [];
    }

    final packs = <Pack>[];
    for (var p in packsMaps) {
      final pack = Pack.fromJson(p);
      packs.add(pack);
    }

    return packs;
  }

  @override
  Future<int> addPack({required String name}) async {
    final id = await db.insert(
      '$_dbName',
      {'name': name},
    );

    return id;
  }
}
