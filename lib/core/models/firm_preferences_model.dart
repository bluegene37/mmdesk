import 'package:freezed_annotation/freezed_annotation.dart';

part 'firm_preferences_model.freezed.dart';
part 'firm_preferences_model.g.dart';

@freezed
class FirmPreferencesModel with _$FirmPreferencesModel {
  const factory FirmPreferencesModel({
    @Default('default') String id,
    @Default('cash') String basis,
    @JsonKey(name: 'financial_year_end_month') @Default(6) int financialYearEndMonth,
    @JsonKey(name: 'financial_year_end_day') @Default(30) int financialYearEndDay,
    @JsonKey(name: 'lock_accounts_to') DateTime? lockAccountsTo,
    @JsonKey(name: 'invoices_due_days') @Default(14) int invoicesDueDays,
    @JsonKey(name: 'deposit_request_days') @Default(14) int depositRequestDays,
    // Default tax code references
    @JsonKey(name: 'default_taxable_income') String? defaultTaxableIncome,
    @JsonKey(name: 'default_taxable_expenses') String? defaultTaxableExpenses,
    @JsonKey(name: 'default_tax_free_income') String? defaultTaxFreeIncome,
    @JsonKey(name: 'default_tax_free_expenses') String? defaultTaxFreeExpenses,
    @JsonKey(name: 'default_not_reportable') String? defaultNotReportable,
    @JsonKey(name: 'default_client_credits') String? defaultClientCredits,
    @JsonKey(name: 'default_agent_fees') String? defaultAgentFees,
    @JsonKey(name: 'default_dept_disbursements') String? defaultDeptDisbursements,
    // Default bank account references
    @JsonKey(name: 'default_client_account') String? defaultClientAccount,
    @JsonKey(name: 'default_office_account') String? defaultOfficeAccount,
    @JsonKey(name: 'default_disbursements_account') String? defaultDisbursementsAccount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _FirmPreferencesModel;

  factory FirmPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$FirmPreferencesModelFromJson(json);
}
