import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
class ClientModel with _$ClientModel {
  const factory ClientModel({
    required String id,
    @JsonKey(name: 'primary_agent_id') required String primaryAgentId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? email,
    String? phone,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    String? nationality,
    @JsonKey(name: 'passport_number') String? passportNumber,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) => _$ClientModelFromJson(json);
}
