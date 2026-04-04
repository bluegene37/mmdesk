// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxCodeModelImpl _$$TaxCodeModelImplFromJson(Map<String, dynamic> json) =>
    _$TaxCodeModelImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      description: json['description'] as String? ?? '',
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
      isIncome: json['is_income'] as bool? ?? false,
      isExpense: json['is_expense'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TaxCodeModelImplToJson(_$TaxCodeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'rate': instance.rate,
      'is_income': instance.isIncome,
      'is_expense': instance.isExpense,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
