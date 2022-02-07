import 'package:sticker_creator/data/models/sticker.dart';

abstract class StickersRepository {
  Future<int> saveSticker({required String path, required int packId});
  Future<List<Sticker>> getPackSticker({required int packId});
}
