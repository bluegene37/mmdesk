import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    String? phone,
    @JsonKey(name: 'is_responsible') @Default(false) bool isResponsible,
    @JsonKey(name: 'primary_registration_no') String? primaryRegistrationNo,
    @JsonKey(name: 'primary_registration_type') String? primaryRegistrationType,
    @JsonKey(name: 'business_name') String? businessName,
    @JsonKey(name: 'office_name') String? officeName,
    @JsonKey(name: 'access_level') @Default('full') String accessLevel,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
