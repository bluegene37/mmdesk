// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountModelImpl _$$BankAccountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountModelImpl(
      id: json['id'] as String,
      displayName: json['display_name'] as String,
      accountName: json['account_name'] as String,
      accountNumber: json['account_number'] as String,
      bsb: json['bsb'] as String? ?? '',
      bankName: json['bank_name'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$BankAccountModelImplToJson(
        _$BankAccountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'bsb': instance.bsb,
      'bank_name': instance.bankName,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
