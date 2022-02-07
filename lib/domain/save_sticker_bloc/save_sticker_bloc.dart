import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sticker_creator/data/models/sticker.dart';
import 'package:sticker_creator/data/repositories/stickers_repository.dart';

part 'save_sticker_event.dart';
part 'save_sticker_state.dart';
part 'save_sticker_bloc.freezed.dart';

class SaveStickerBloc extends Bloc<SaveStickerEvent, SaveStickerState> {
  final StickersRepository stickersRepository;

  SaveStickerBloc({
    required this.stickersRepository,
  }) : super(const Initial()) {
    on<SaveStickerEvent>(_save);
  }

  FutureOr<void> _save(
    SaveStickerEvent event,
    Emitter<SaveStickerState> emit,
  ) async {
    emit(
      const SaveStickerState.loading(),
    );
    
    try {
      final path = (await getApplicationDocumentsDirectory()).path + '/${event.filename}';

      await event.image.copy(path);

      final stickerId = await stickersRepository.saveSticker(
        packId: event.packId,
        path: path,
      );

      emit(
        SaveStickerState.success(
          sticker: Sticker(
            id: stickerId,
            packId: event.packId,
            path: path,
          ),
        ),
      );
    } catch (e) {
      emit(
        SaveStickerState.error(
          error: e.toString(),
        ),
      );
    }
  }
}
