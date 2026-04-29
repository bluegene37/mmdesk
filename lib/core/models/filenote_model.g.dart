// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filenote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilenoteModelImpl _$$FilenoteModelImplFromJson(Map<String, dynamic> json) =>
    _$FilenoteModelImpl(
      id: json['id'] as String,
      matterId: json['matter_id'] as String?,
      subject: json['subject'] as String,
      action: json['action'] as String?,
      feeEarnerId: json['fee_earner_id'] as String?,
      content: json['content'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FilenoteModelImplToJson(_$FilenoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matter_id': instance.matterId,
      'subject': instance.subject,
      'action': instance.action,
      'fee_earner_id': instance.feeEarnerId,
      'content': instance.content,
      'date': instance.date?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
