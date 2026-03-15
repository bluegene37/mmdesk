import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

enum UserRole { admin, agent, lawyer }

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String id,
    required UserRole role,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}
