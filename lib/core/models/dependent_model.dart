import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependent_model.freezed.dart';
part 'dependent_model.g.dart';

@freezed
class DependentModel with _$DependentModel {
  const factory DependentModel({
    required String id,
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String relationship,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _DependentModel;

  factory DependentModel.fromJson(Map<String, dynamic> json) => _$DependentModelFromJson(json);
}
