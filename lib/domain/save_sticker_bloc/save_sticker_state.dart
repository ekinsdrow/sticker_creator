part of 'save_sticker_bloc.dart';

@freezed
class SaveStickerState with _$SaveStickerState {
  const factory SaveStickerState.initial() = Initial;
  const factory SaveStickerState.loading() = Loading;
  const factory SaveStickerState.success({required Sticker sticker}) = Success;
  const factory SaveStickerState.error({required String error}) = Error;
}
