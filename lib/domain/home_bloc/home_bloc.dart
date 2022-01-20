import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sticker_creator/data/models/pack.dart';
import 'package:sticker_creator/data/repositories/packs_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.packsRepository,
  }) : super(const Loading()) {
    on<HomeEvent>(_fetch);
  }

  final PackRepository packsRepository;

  Future<FutureOr<void>> _fetch(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(
        const HomeState.loading(),
      );

      final packs = await packsRepository.getAllPacks();

      emit(
        HomeState.success(packs: packs),
      );
    } on Exception catch (e) {
      emit(
        HomeState.error(
          error: e.toString(),
        ),
      );
    }
  }
}
