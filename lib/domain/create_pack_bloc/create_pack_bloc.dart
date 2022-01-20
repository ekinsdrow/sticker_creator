import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sticker_creator/data/models/pack.dart';
import 'package:sticker_creator/data/repositories/packs_repository.dart';

part 'create_pack_event.dart';
part 'create_pack_state.dart';
part 'create_pack_bloc.freezed.dart';

class CreatePackBloc extends Bloc<CreatePackEvent, CreatePackState> {
  final PackRepository packRepository;

  CreatePackBloc({
    required this.packRepository,
  }) : super(
          const Initial(),
        ) {
    on<CreatePackEvent>(_create);
  }

  FutureOr<void> _create(
    CreatePackEvent event,
    Emitter<CreatePackState> emit,
  ) async {
    try {
      final id = await packRepository.addPack(name: event.name);

      emit(
        CreatePackState.success(
          pack: Pack(
            id: id,
            name: event.name,
          ),
        ),
      );
    } on Exception catch (e) {
      emit(
        CreatePackState.error(error: e.toString()),
      );
    }
  }
}
