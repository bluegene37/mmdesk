// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseModelImpl _$$CaseModelImplFromJson(Map<String, dynamic> json) =>
    _$CaseModelImpl(
      id: json['id'] as String,
      clientId: json['client_id'] as String,
      agentId: json['agent_id'] as String,
      type: $enumDecode(_$CaseTypeEnumMap, json['type']),
      status: $enumDecode(_$CaseStatusEnumMap, json['status']),
      priority: $enumDecode(_$PriorityLevelEnumMap, json['priority']),
      description: json['description'] as String?,
      expiryDate: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CaseModelImplToJson(_$CaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.clientId,
      'agent_id': instance.agentId,
      'type': _$CaseTypeEnumMap[instance.type]!,
      'status': _$CaseStatusEnumMap[instance.status]!,
      'priority': _$PriorityLevelEnumMap[instance.priority]!,
      'description': instance.description,
      'expiry_date': instance.expiryDate?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$CaseTypeEnumMap = {
  CaseType.visa: 'visa',
  CaseType.citizenship: 'citizenship',
  CaseType.asylum: 'asylum',
  CaseType.corporate: 'corporate',
  CaseType.other: 'other',
};

const _$CaseStatusEnumMap = {
  CaseStatus.open: 'open',
  CaseStatus.in_progress: 'in_progress',
  CaseStatus.pending_documents: 'pending_documents',
  CaseStatus.submitted: 'submitted',
  CaseStatus.approved: 'approved',
  CaseStatus.rejected: 'rejected',
  CaseStatus.closed: 'closed',
};

const _$PriorityLevelEnumMap = {
  PriorityLevel.low: 'low',
  PriorityLevel.medium: 'medium',
  PriorityLevel.high: 'high',
  PriorityLevel.urgent: 'urgent',
};
