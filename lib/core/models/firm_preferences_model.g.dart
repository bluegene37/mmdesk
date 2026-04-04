// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firm_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirmPreferencesModelImpl _$$FirmPreferencesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirmPreferencesModelImpl(
      id: json['id'] as String? ?? 'default',
      basis: json['basis'] as String? ?? 'cash',
      financialYearEndMonth:
          (json['financial_year_end_month'] as num?)?.toInt() ?? 6,
      financialYearEndDay:
          (json['financial_year_end_day'] as num?)?.toInt() ?? 30,
      lockAccountsTo: json['lock_accounts_to'] == null
          ? null
          : DateTime.parse(json['lock_accounts_to'] as String),
      invoicesDueDays: (json['invoices_due_days'] as num?)?.toInt() ?? 14,
      depositRequestDays: (json['deposit_request_days'] as num?)?.toInt() ?? 14,
      defaultTaxableIncome: json['default_taxable_income'] as String?,
      defaultTaxableExpenses: json['default_taxable_expenses'] as String?,
      defaultTaxFreeIncome: json['default_tax_free_income'] as String?,
      defaultTaxFreeExpenses: json['default_tax_free_expenses'] as String?,
      defaultNotReportable: json['default_not_reportable'] as String?,
      defaultClientCredits: json['default_client_credits'] as String?,
      defaultAgentFees: json['default_agent_fees'] as String?,
      defaultDeptDisbursements: json['default_dept_disbursements'] as String?,
      defaultClientAccount: json['default_client_account'] as String?,
      defaultOfficeAccount: json['default_office_account'] as String?,
      defaultDisbursementsAccount:
          json['default_disbursements_account'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FirmPreferencesModelImplToJson(
        _$FirmPreferencesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'basis': instance.basis,
      'financial_year_end_month': instance.financialYearEndMonth,
      'financial_year_end_day': instance.financialYearEndDay,
      'lock_accounts_to': instance.lockAccountsTo?.toIso8601String(),
      'invoices_due_days': instance.invoicesDueDays,
      'deposit_request_days': instance.depositRequestDays,
      'default_taxable_income': instance.defaultTaxableIncome,
      'default_taxable_expenses': instance.defaultTaxableExpenses,
      'default_tax_free_income': instance.defaultTaxFreeIncome,
      'default_tax_free_expenses': instance.defaultTaxFreeExpenses,
      'default_not_reportable': instance.defaultNotReportable,
      'default_client_credits': instance.defaultClientCredits,
      'default_agent_fees': instance.defaultAgentFees,
      'default_dept_disbursements': instance.defaultDeptDisbursements,
      'default_client_account': instance.defaultClientAccount,
      'default_office_account': instance.defaultOfficeAccount,
      'default_disbursements_account': instance.defaultDisbursementsAccount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
