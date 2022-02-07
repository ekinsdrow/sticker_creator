import 'package:sqflite/sqlite_api.dart';
import 'package:sticker_creator/data/models/sticker.dart';
import 'package:sticker_creator/data/repositories/stickers_repository.dart';

class StickersRepositoryImpl implements StickersRepository {
  StickersRepositoryImpl({
    required this.db,
  });

  final Database db;
  final _tableName = 'Stickers';

  @override
  Future<int> saveSticker({required String path, required int packId}) async {
    return await db.insert(
      _tableName,
      {
        'path': path,
        'packId': packId,
      },
    );
  }

  @override
  Future<List<Sticker>> getPackSticker({required int packId}) async {
    final stickersMap = await db.rawQuery('SELECT * FROM $_tableName WHERE packId=$packId');
    if (stickersMap.isEmpty) {
      return [];
    }

    final stickers = <Sticker>[];

    for (final s in stickersMap) {
      final sticker = Sticker.fromJson(s);
      stickers.add(sticker);
    }

    return stickers;
  }
}
