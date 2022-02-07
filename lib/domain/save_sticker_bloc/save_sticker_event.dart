part of 'save_sticker_bloc.dart';

@freezed
class SaveStickerEvent with _$SaveStickerEvent {
  const factory SaveStickerEvent.save({
    required int packId,
    required File image,
    required String filename,
  }) = Save;
}
