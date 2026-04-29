// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weblead_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebLeadModelImpl _$$WebLeadModelImplFromJson(Map<String, dynamic> json) =>
    _$WebLeadModelImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      visaInterest: json['visa_interest'] as String?,
      message: json['message'] as String?,
      referralSource: json['referral_source'] as String?,
      status: json['status'] as String? ?? 'new',
      reviewedBy: json['reviewed_by'] as String?,
      convertedMatterId: json['converted_matter_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$WebLeadModelImplToJson(_$WebLeadModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'visa_interest': instance.visaInterest,
      'message': instance.message,
      'referral_source': instance.referralSource,
      'status': instance.status,
      'reviewed_by': instance.reviewedBy,
      'converted_matter_id': instance.convertedMatterId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
