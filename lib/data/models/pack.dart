import 'package:freezed_annotation/freezed_annotation.dart';

part 'pack.freezed.dart';
part 'pack.g.dart';

@freezed
class Pack with _$Pack {
  factory Pack({
    required int id,
    required String name,
  }) = _Pack;

  factory Pack.fromJson(Map<String, dynamic> json) => _$PackFromJson(json);
}
