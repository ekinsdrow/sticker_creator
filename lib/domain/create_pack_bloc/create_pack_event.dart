part of 'create_pack_bloc.dart';

@freezed
class CreatePackEvent with _$CreatePackEvent {
  const factory CreatePackEvent.create({required String name}) = Create;
}