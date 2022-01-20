import 'package:sticker_creator/data/models/pack.dart';

abstract class PackRepository {
  Future<List<Pack>> getAllPacks();

  Future<int> addPack({required String name});
}
