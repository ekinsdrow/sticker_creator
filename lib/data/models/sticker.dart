import 'package:freezed_annotation/freezed_annotation.dart';

part 'sticker.freezed.dart';
part 'sticker.g.dart';

@freezed
class Sticker with _$Sticker {
  factory Sticker({
    required int id,
    required String path,
    required int packId,
  }) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) => _$StickerFromJson(json);
}
