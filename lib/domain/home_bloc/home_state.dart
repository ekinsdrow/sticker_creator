part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = Loading;
  const factory HomeState.success({required List<Pack> packs}) = Success;
  const factory HomeState.error({required String error}) = Error;
}
