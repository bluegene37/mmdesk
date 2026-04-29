// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationModelImpl _$$ConsultationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationModelImpl(
      id: json['id'] as String,
      matterId: json['matter_id'] as String?,
      clientId: json['client_id'] as String?,
      staffId: json['staff_id'] as String?,
      date: DateTime.parse(json['date'] as String),
      durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
      type: json['type'] as String? ?? 'initial',
      notes: json['notes'] as String?,
      fee: (json['fee'] as num?)?.toDouble() ?? 0,
      status: json['status'] as String? ?? 'scheduled',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ConsultationModelImplToJson(
        _$ConsultationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matter_id': instance.matterId,
      'client_id': instance.clientId,
      'staff_id': instance.staffId,
      'date': instance.date.toIso8601String(),
      'duration_minutes': instance.durationMinutes,
      'type': instance.type,
      'notes': instance.notes,
      'fee': instance.fee,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
