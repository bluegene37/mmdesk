// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatterModelImpl _$$MatterModelImplFromJson(Map<String, dynamic> json) =>
    _$MatterModelImpl(
      id: json['id'] as String,
      matterId: json['matter_id'] as String,
      clientId: json['client_id'] as String?,
      sponsorId: json['sponsor_id'] as String?,
      categoryId: json['category_id'] as String?,
      visaTypeId: json['visa_type_id'] as String?,
      matterTypeId: json['matter_type_id'] as String?,
      statusId: json['status_id'] as String?,
      registrationType: json['registration_type'] as String? ?? 'client',
      detailType: json['detail_type'] as String? ?? 'migrant',
      responsibleStaffId: json['responsible_staff_id'] as String?,
      managerId: json['manager_id'] as String?,
      clerkId: json['clerk_id'] as String?,
      office: json['office'] as String? ?? 'Main',
      departmentId: json['department_id'] as String?,
      referralSourceId: json['referral_source_id'] as String?,
      legalBasisId: json['legal_basis_id'] as String?,
      engagementDate: json['engagement_date'] == null
          ? null
          : DateTime.parse(json['engagement_date'] as String),
      priority: json['priority'] as String? ?? 'medium',
      description: json['description'] as String?,
      isArchived: json['is_archived'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MatterModelImplToJson(_$MatterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matter_id': instance.matterId,
      'client_id': instance.clientId,
      'sponsor_id': instance.sponsorId,
      'category_id': instance.categoryId,
      'visa_type_id': instance.visaTypeId,
      'matter_type_id': instance.matterTypeId,
      'status_id': instance.statusId,
      'registration_type': instance.registrationType,
      'detail_type': instance.detailType,
      'responsible_staff_id': instance.responsibleStaffId,
      'manager_id': instance.managerId,
      'clerk_id': instance.clerkId,
      'office': instance.office,
      'department_id': instance.departmentId,
      'referral_source_id': instance.referralSourceId,
      'legal_basis_id': instance.legalBasisId,
      'engagement_date': instance.engagementDate?.toIso8601String(),
      'priority': instance.priority,
      'description': instance.description,
      'is_archived': instance.isArchived,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
