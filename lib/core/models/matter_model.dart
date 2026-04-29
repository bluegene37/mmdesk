import 'package:freezed_annotation/freezed_annotation.dart';

part 'matter_model.freezed.dart';
part 'matter_model.g.dart';

@freezed
class MatterModel with _$MatterModel {
  const factory MatterModel({
    required String id,
    @JsonKey(name: 'matter_id') required String matterId,
    @JsonKey(name: 'client_id') String? clientId,
    @JsonKey(name: 'sponsor_id') String? sponsorId,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'visa_type_id') String? visaTypeId,
    @JsonKey(name: 'matter_type_id') String? matterTypeId,
    @JsonKey(name: 'status_id') String? statusId,
    @JsonKey(name: 'registration_type') @Default('client') String registrationType,
    @JsonKey(name: 'detail_type') @Default('migrant') String detailType,
    @JsonKey(name: 'responsible_staff_id') String? responsibleStaffId,
    @JsonKey(name: 'manager_id') String? managerId,
    @JsonKey(name: 'clerk_id') String? clerkId,
    @Default('Main') String office,
    @JsonKey(name: 'department_id') String? departmentId,
    @JsonKey(name: 'referral_source_id') String? referralSourceId,
    @JsonKey(name: 'legal_basis_id') String? legalBasisId,
    @JsonKey(name: 'engagement_date') DateTime? engagementDate,
    @Default('medium') String priority,
    String? description,
    @JsonKey(name: 'is_archived') @Default(false) bool isArchived,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _MatterModel;

  factory MatterModel.fromJson(Map<String, dynamic> json) =>
      _$MatterModelFromJson(json);
}
