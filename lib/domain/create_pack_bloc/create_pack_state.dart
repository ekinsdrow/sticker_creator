part of 'create_pack_bloc.dart';

@freezed
class CreatePackState with _$CreatePackState {
  const factory CreatePackState.initial() = Initial;
  const factory CreatePackState.loading() = Loading;
  const factory CreatePackState.success({required Pack pack}) = Success;
  const factory CreatePackState.error({required String error}) = Error;
}
