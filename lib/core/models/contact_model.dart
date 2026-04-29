import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
    required String id,
    @JsonKey(name: 'matter_id') String? matterId,
    @JsonKey(name: 'client_id') String? clientId,
    @JsonKey(name: 'contact_type_id') String? contactTypeId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? email,
    String? phone,
    String? organization,
    String? notes,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}
