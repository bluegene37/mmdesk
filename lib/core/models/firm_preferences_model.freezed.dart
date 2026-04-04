// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firm_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirmPreferencesModel _$FirmPreferencesModelFromJson(Map<String, dynamic> json) {
  return _FirmPreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$FirmPreferencesModel {
  String get id => throw _privateConstructorUsedError;
  String get basis => throw _privateConstructorUsedError;
  @JsonKey(name: 'financial_year_end_month')
  int get financialYearEndMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'financial_year_end_day')
  int get financialYearEndDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'lock_accounts_to')
  DateTime? get lockAccountsTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoices_due_days')
  int get invoicesDueDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit_request_days')
  int get depositRequestDays =>
      throw _privateConstructorUsedError; // Default tax code references
  @JsonKey(name: 'default_taxable_income')
  String? get defaultTaxableIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_taxable_expenses')
  String? get defaultTaxableExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_tax_free_income')
  String? get defaultTaxFreeIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_tax_free_expenses')
  String? get defaultTaxFreeExpenses => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_not_reportable')
  String? get defaultNotReportable => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_client_credits')
  String? get defaultClientCredits => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_agent_fees')
  String? get defaultAgentFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_dept_disbursements')
  String? get defaultDeptDisbursements =>
      throw _privateConstructorUsedError; // Default bank account references
  @JsonKey(name: 'default_client_account')
  String? get defaultClientAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_office_account')
  String? get defaultOfficeAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_disbursements_account')
  String? get defaultDisbursementsAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirmPreferencesModelCopyWith<FirmPreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirmPreferencesModelCopyWith<$Res> {
  factory $FirmPreferencesModelCopyWith(FirmPreferencesModel value,
          $Res Function(FirmPreferencesModel) then) =
      _$FirmPreferencesModelCopyWithImpl<$Res, FirmPreferencesModel>;
  @useResult
  $Res call(
      {String id,
      String basis,
      @JsonKey(name: 'financial_year_end_month') int financialYearEndMonth,
      @JsonKey(name: 'financial_year_end_day') int financialYearEndDay,
      @JsonKey(name: 'lock_accounts_to') DateTime? lockAccountsTo,
      @JsonKey(name: 'invoices_due_days') int invoicesDueDays,
      @JsonKey(name: 'deposit_request_days') int depositRequestDays,
      @JsonKey(name: 'default_taxable_income') String? defaultTaxableIncome,
      @JsonKey(name: 'default_taxable_expenses') String? defaultTaxableExpenses,
      @JsonKey(name: 'default_tax_free_income') String? defaultTaxFreeIncome,
      @JsonKey(name: 'default_tax_free_expenses')
      String? defaultTaxFreeExpenses,
      @JsonKey(name: 'default_not_reportable') String? defaultNotReportable,
      @JsonKey(name: 'default_client_credits') String? defaultClientCredits,
      @JsonKey(name: 'default_agent_fees') String? defaultAgentFees,
      @JsonKey(name: 'default_dept_disbursements')
      String? defaultDeptDisbursements,
      @JsonKey(name: 'default_client_account') String? defaultClientAccount,
      @JsonKey(name: 'default_office_account') String? defaultOfficeAccount,
      @JsonKey(name: 'default_disbursements_account')
      String? defaultDisbursementsAccount,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$FirmPreferencesModelCopyWithImpl<$Res,
        $Val extends FirmPreferencesModel>
    implements $FirmPreferencesModelCopyWith<$Res> {
  _$FirmPreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basis = null,
    Object? financialYearEndMonth = null,
    Object? financialYearEndDay = null,
    Object? lockAccountsTo = freezed,
    Object? invoicesDueDays = null,
    Object? depositRequestDays = null,
    Object? defaultTaxableIncome = freezed,
    Object? defaultTaxableExpenses = freezed,
    Object? defaultTaxFreeIncome = freezed,
    Object? defaultTaxFreeExpenses = freezed,
    Object? defaultNotReportable = freezed,
    Object? defaultClientCredits = freezed,
    Object? defaultAgentFees = freezed,
    Object? defaultDeptDisbursements = freezed,
    Object? defaultClientAccount = freezed,
    Object? defaultOfficeAccount = freezed,
    Object? defaultDisbursementsAccount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      basis: null == basis
          ? _value.basis
          : basis // ignore: cast_nullable_to_non_nullable
              as String,
      financialYearEndMonth: null == financialYearEndMonth
          ? _value.financialYearEndMonth
          : financialYearEndMonth // ignore: cast_nullable_to_non_nullable
              as int,
      financialYearEndDay: null == financialYearEndDay
          ? _value.financialYearEndDay
          : financialYearEndDay // ignore: cast_nullable_to_non_nullable
              as int,
      lockAccountsTo: freezed == lockAccountsTo
          ? _value.lockAccountsTo
          : lockAccountsTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invoicesDueDays: null == invoicesDueDays
          ? _value.invoicesDueDays
          : invoicesDueDays // ignore: cast_nullable_to_non_nullable
              as int,
      depositRequestDays: null == depositRequestDays
          ? _value.depositRequestDays
          : depositRequestDays // ignore: cast_nullable_to_non_nullable
              as int,
      defaultTaxableIncome: freezed == defaultTaxableIncome
          ? _value.defaultTaxableIncome
          : defaultTaxableIncome // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTaxableExpenses: freezed == defaultTaxableExpenses
          ? _value.defaultTaxableExpenses
          : defaultTaxableExpenses // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTaxFreeIncome: freezed == defaultTaxFreeIncome
          ? _value.defaultTaxFreeIncome
          : defaultTaxFreeIncome // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTaxFreeExpenses: freezed == defaultTaxFreeExpenses
          ? _value.defaultTaxFreeExpenses
          : defaultTaxFreeExpenses // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultNotReportable: freezed == defaultNotReportable
          ? _value.defaultNotReportable
          : defaultNotReportable // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultClientCredits: freezed == defaultClientCredits
          ? _value.defaultClientCredits
          : defaultClientCredits // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultAgentFees: freezed == defaultAgentFees
          ? _value.defaultAgentFees
          : defaultAgentFees // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultDeptDisbursements: freezed == defaultDeptDisbursements
          ? _value.defaultDeptDisbursements
          : defaultDeptDisbursements // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultClientAccount: freezed == defaultClientAccount
          ? _value.defaultClientAccount
          : defaultClientAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultOfficeAccount: freezed == defaultOfficeAccount
          ? _value.defaultOfficeAccount
          : defaultOfficeAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultDisbursementsAccount: freezed == defaultDisbursementsAccount
          ? _value.defaultDisbursementsAccount
          : defaultDisbursementsAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirmPreferencesModelImplCopyWith<$Res>
    implements $FirmPreferencesModelCopyWith<$Res> {
  factory _$$FirmPreferencesModelImplCopyWith(_$FirmPreferencesModelImpl value,
          $Res Function(_$FirmPreferencesModelImpl) then) =
      __$$FirmPreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String basis,
      @JsonKey(name: 'financial_year_end_month') int financialYearEndMonth,
      @JsonKey(name: 'financial_year_end_day') int financialYearEndDay,
      @JsonKey(name: 'lock_accounts_to') DateTime? lockAccountsTo,
      @JsonKey(name: 'invoices_due_days') int invoicesDueDays,
      @JsonKey(name: 'deposit_request_days') int depositRequestDays,
      @JsonKey(name: 'default_taxable_income') String? defaultTaxableIncome,
      @JsonKey(name: 'default_taxable_expenses') String? defaultTaxableExpenses,
      @JsonKey(name: 'default_tax_free_income') String? defaultTaxFreeIncome,
      @JsonKey(name: 'default_tax_free_expenses')
      String? defaultTaxFreeExpenses,
      @JsonKey(name: 'default_not_reportable') String? defaultNotReportable,
      @JsonKey(name: 'default_client_credits') String? defaultClientCredits,
      @JsonKey(name: 'default_agent_fees') String? defaultAgentFees,
      @JsonKey(name: 'default_dept_disbursements')
      String? defaultDeptDisbursements,
      @JsonKey(name: 'default_client_account') String? defaultClientAccount,
      @JsonKey(name: 'default_office_account') String? defaultOfficeAccount,
      @JsonKey(name: 'default_disbursements_account')
      String? defaultDisbursementsAccount,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$FirmPreferencesModelImplCopyWithImpl<$Res>
    extends _$FirmPreferencesModelCopyWithImpl<$Res, _$FirmPreferencesModelImpl>
    implements _$$FirmPreferencesModelImplCopyWith<$Res> {
  __$$FirmPreferencesModelImplCopyWithImpl(_$FirmPreferencesModelImpl _value,
      $Res Function(_$FirmPreferencesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? basis = null,
    Object? financialYearEndMonth = null,
    Object? financialYearEndDay = null,
    Object? lockAccountsTo = freezed,
    Object? invoicesDueDays = null,
    Object? depositRequestDays = null,
    Object? defaultTaxableIncome = freezed,
    Object? defaultTaxableExpenses = freezed,
    Object? defaultTaxFreeIncome = freezed,
    Object? defaultTaxFreeExpenses = freezed,
    Object? defaultNotReportable = freezed,
    Object? defaultClientCredits = freezed,
    Object? defaultAgentFees = freezed,
    Object? defaultDeptDisbursements = freezed,
    Object? defaultClientAccount = freezed,
    Object? defaultOfficeAccount = freezed,
    Object? defaultDisbursementsAccount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirmPreferencesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      basis: null == basis
          ? _value.basis
          : basis // ignore: cast_nullable_to_non_nullable
              as String,
      financialYearEndMonth: null == financialYearEndMonth
          ? _value.financialYearEndMonth
          : financialYearEndMonth // ignore: cast_nullable_to_non_nullable
              as int,
      financialYearEndDay: null == financialYearEndDay
          ? _value.financialYearEndDay
          : financialYearEndDay // ignore: cast_nullable_to_non_nullable
              as int,
      lockAccountsTo: freezed == lockAccountsTo
          ? _value.lockAccountsTo
          : lockAccountsTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invoicesDueDays: null == invoicesDueDays
          ? _value.invoicesDueDays
          : invoicesDueDays // ignore: cast_nullable_to_non_nullable
              as int,
      depositRequestDays: null == depositRequestDays
          ? _value.depositRequestDays
          : depositRequestDays // ignore: cast_nullable_to_non_nullable
              as int,
      defaultTaxableIncome: freezed == defaultTaxableIncome
          ? _value.defaultTaxableIncome
          : defaultTaxableIncome // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTaxableExpenses: freezed == defaultTaxableExpenses
          ? _value.defaultTaxableExpenses
          : defaultTaxableExpenses // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTaxFreeIncome: freezed == defaultTaxFreeIncome
          ? _value.defaultTaxFreeIncome
          : defaultTaxFreeIncome // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTaxFreeExpenses: freezed == defaultTaxFreeExpenses
          ? _value.defaultTaxFreeExpenses
          : defaultTaxFreeExpenses // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultNotReportable: freezed == defaultNotReportable
          ? _value.defaultNotReportable
          : defaultNotReportable // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultClientCredits: freezed == defaultClientCredits
          ? _value.defaultClientCredits
          : defaultClientCredits // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultAgentFees: freezed == defaultAgentFees
          ? _value.defaultAgentFees
          : defaultAgentFees // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultDeptDisbursements: freezed == defaultDeptDisbursements
          ? _value.defaultDeptDisbursements
          : defaultDeptDisbursements // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultClientAccount: freezed == defaultClientAccount
          ? _value.defaultClientAccount
          : defaultClientAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultOfficeAccount: freezed == defaultOfficeAccount
          ? _value.defaultOfficeAccount
          : defaultOfficeAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultDisbursementsAccount: freezed == defaultDisbursementsAccount
          ? _value.defaultDisbursementsAccount
          : defaultDisbursementsAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirmPreferencesModelImpl implements _FirmPreferencesModel {
  const _$FirmPreferencesModelImpl(
      {this.id = 'default',
      this.basis = 'cash',
      @JsonKey(name: 'financial_year_end_month') this.financialYearEndMonth = 6,
      @JsonKey(name: 'financial_year_end_day') this.financialYearEndDay = 30,
      @JsonKey(name: 'lock_accounts_to') this.lockAccountsTo,
      @JsonKey(name: 'invoices_due_days') this.invoicesDueDays = 14,
      @JsonKey(name: 'deposit_request_days') this.depositRequestDays = 14,
      @JsonKey(name: 'default_taxable_income') this.defaultTaxableIncome,
      @JsonKey(name: 'default_taxable_expenses') this.defaultTaxableExpenses,
      @JsonKey(name: 'default_tax_free_income') this.defaultTaxFreeIncome,
      @JsonKey(name: 'default_tax_free_expenses') this.defaultTaxFreeExpenses,
      @JsonKey(name: 'default_not_reportable') this.defaultNotReportable,
      @JsonKey(name: 'default_client_credits') this.defaultClientCredits,
      @JsonKey(name: 'default_agent_fees') this.defaultAgentFees,
      @JsonKey(name: 'default_dept_disbursements')
      this.defaultDeptDisbursements,
      @JsonKey(name: 'default_client_account') this.defaultClientAccount,
      @JsonKey(name: 'default_office_account') this.defaultOfficeAccount,
      @JsonKey(name: 'default_disbursements_account')
      this.defaultDisbursementsAccount,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$FirmPreferencesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirmPreferencesModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String basis;
  @override
  @JsonKey(name: 'financial_year_end_month')
  final int financialYearEndMonth;
  @override
  @JsonKey(name: 'financial_year_end_day')
  final int financialYearEndDay;
  @override
  @JsonKey(name: 'lock_accounts_to')
  final DateTime? lockAccountsTo;
  @override
  @JsonKey(name: 'invoices_due_days')
  final int invoicesDueDays;
  @override
  @JsonKey(name: 'deposit_request_days')
  final int depositRequestDays;
// Default tax code references
  @override
  @JsonKey(name: 'default_taxable_income')
  final String? defaultTaxableIncome;
  @override
  @JsonKey(name: 'default_taxable_expenses')
  final String? defaultTaxableExpenses;
  @override
  @JsonKey(name: 'default_tax_free_income')
  final String? defaultTaxFreeIncome;
  @override
  @JsonKey(name: 'default_tax_free_expenses')
  final String? defaultTaxFreeExpenses;
  @override
  @JsonKey(name: 'default_not_reportable')
  final String? defaultNotReportable;
  @override
  @JsonKey(name: 'default_client_credits')
  final String? defaultClientCredits;
  @override
  @JsonKey(name: 'default_agent_fees')
  final String? defaultAgentFees;
  @override
  @JsonKey(name: 'default_dept_disbursements')
  final String? defaultDeptDisbursements;
// Default bank account references
  @override
  @JsonKey(name: 'default_client_account')
  final String? defaultClientAccount;
  @override
  @JsonKey(name: 'default_office_account')
  final String? defaultOfficeAccount;
  @override
  @JsonKey(name: 'default_disbursements_account')
  final String? defaultDisbursementsAccount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirmPreferencesModel(id: $id, basis: $basis, financialYearEndMonth: $financialYearEndMonth, financialYearEndDay: $financialYearEndDay, lockAccountsTo: $lockAccountsTo, invoicesDueDays: $invoicesDueDays, depositRequestDays: $depositRequestDays, defaultTaxableIncome: $defaultTaxableIncome, defaultTaxableExpenses: $defaultTaxableExpenses, defaultTaxFreeIncome: $defaultTaxFreeIncome, defaultTaxFreeExpenses: $defaultTaxFreeExpenses, defaultNotReportable: $defaultNotReportable, defaultClientCredits: $defaultClientCredits, defaultAgentFees: $defaultAgentFees, defaultDeptDisbursements: $defaultDeptDisbursements, defaultClientAccount: $defaultClientAccount, defaultOfficeAccount: $defaultOfficeAccount, defaultDisbursementsAccount: $defaultDisbursementsAccount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirmPreferencesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.basis, basis) || other.basis == basis) &&
            (identical(other.financialYearEndMonth, financialYearEndMonth) ||
                other.financialYearEndMonth == financialYearEndMonth) &&
            (identical(other.financialYearEndDay, financialYearEndDay) ||
                other.financialYearEndDay == financialYearEndDay) &&
            (identical(other.lockAccountsTo, lockAccountsTo) ||
                other.lockAccountsTo == lockAccountsTo) &&
            (identical(other.invoicesDueDays, invoicesDueDays) ||
                other.invoicesDueDays == invoicesDueDays) &&
            (identical(other.depositRequestDays, depositRequestDays) ||
                other.depositRequestDays == depositRequestDays) &&
            (identical(other.defaultTaxableIncome, defaultTaxableIncome) ||
                other.defaultTaxableIncome == defaultTaxableIncome) &&
            (identical(other.defaultTaxableExpenses, defaultTaxableExpenses) ||
                other.defaultTaxableExpenses == defaultTaxableExpenses) &&
            (identical(other.defaultTaxFreeIncome, defaultTaxFreeIncome) ||
                other.defaultTaxFreeIncome == defaultTaxFreeIncome) &&
            (identical(other.defaultTaxFreeExpenses, defaultTaxFreeExpenses) ||
                other.defaultTaxFreeExpenses == defaultTaxFreeExpenses) &&
            (identical(other.defaultNotReportable, defaultNotReportable) ||
                other.defaultNotReportable == defaultNotReportable) &&
            (identical(other.defaultClientCredits, defaultClientCredits) ||
                other.defaultClientCredits == defaultClientCredits) &&
            (identical(other.defaultAgentFees, defaultAgentFees) ||
                other.defaultAgentFees == defaultAgentFees) &&
            (identical(
                    other.defaultDeptDisbursements, defaultDeptDisbursements) ||
                other.defaultDeptDisbursements == defaultDeptDisbursements) &&
            (identical(other.defaultClientAccount, defaultClientAccount) ||
                other.defaultClientAccount == defaultClientAccount) &&
            (identical(other.defaultOfficeAccount, defaultOfficeAccount) ||
                other.defaultOfficeAccount == defaultOfficeAccount) &&
            (identical(other.defaultDisbursementsAccount,
                    defaultDisbursementsAccount) ||
                other.defaultDisbursementsAccount ==
                    defaultDisbursementsAccount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        basis,
        financialYearEndMonth,
        financialYearEndDay,
        lockAccountsTo,
        invoicesDueDays,
        depositRequestDays,
        defaultTaxableIncome,
        defaultTaxableExpenses,
        defaultTaxFreeIncome,
        defaultTaxFreeExpenses,
        defaultNotReportable,
        defaultClientCredits,
        defaultAgentFees,
        defaultDeptDisbursements,
        defaultClientAccount,
        defaultOfficeAccount,
        defaultDisbursementsAccount,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirmPreferencesModelImplCopyWith<_$FirmPreferencesModelImpl>
      get copyWith =>
          __$$FirmPreferencesModelImplCopyWithImpl<_$FirmPreferencesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirmPreferencesModelImplToJson(
      this,
    );
  }
}

abstract class _FirmPreferencesModel implements FirmPreferencesModel {
  const factory _FirmPreferencesModel(
      {final String id,
      final String basis,
      @JsonKey(name: 'financial_year_end_month')
      final int financialYearEndMonth,
      @JsonKey(name: 'financial_year_end_day') final int financialYearEndDay,
      @JsonKey(name: 'lock_accounts_to') final DateTime? lockAccountsTo,
      @JsonKey(name: 'invoices_due_days') final int invoicesDueDays,
      @JsonKey(name: 'deposit_request_days') final int depositRequestDays,
      @JsonKey(name: 'default_taxable_income')
      final String? defaultTaxableIncome,
      @JsonKey(name: 'default_taxable_expenses')
      final String? defaultTaxableExpenses,
      @JsonKey(name: 'default_tax_free_income')
      final String? defaultTaxFreeIncome,
      @JsonKey(name: 'default_tax_free_expenses')
      final String? defaultTaxFreeExpenses,
      @JsonKey(name: 'default_not_reportable')
      final String? defaultNotReportable,
      @JsonKey(name: 'default_client_credits')
      final String? defaultClientCredits,
      @JsonKey(name: 'default_agent_fees') final String? defaultAgentFees,
      @JsonKey(name: 'default_dept_disbursements')
      final String? defaultDeptDisbursements,
      @JsonKey(name: 'default_client_account')
      final String? defaultClientAccount,
      @JsonKey(name: 'default_office_account')
      final String? defaultOfficeAccount,
      @JsonKey(name: 'default_disbursements_account')
      final String? defaultDisbursementsAccount,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$FirmPreferencesModelImpl;

  factory _FirmPreferencesModel.fromJson(Map<String, dynamic> json) =
      _$FirmPreferencesModelImpl.fromJson;

  @override
  String get id;
  @override
  String get basis;
  @override
  @JsonKey(name: 'financial_year_end_month')
  int get financialYearEndMonth;
  @override
  @JsonKey(name: 'financial_year_end_day')
  int get financialYearEndDay;
  @override
  @JsonKey(name: 'lock_accounts_to')
  DateTime? get lockAccountsTo;
  @override
  @JsonKey(name: 'invoices_due_days')
  int get invoicesDueDays;
  @override
  @JsonKey(name: 'deposit_request_days')
  int get depositRequestDays;
  @override // Default tax code references
  @JsonKey(name: 'default_taxable_income')
  String? get defaultTaxableIncome;
  @override
  @JsonKey(name: 'default_taxable_expenses')
  String? get defaultTaxableExpenses;
  @override
  @JsonKey(name: 'default_tax_free_income')
  String? get defaultTaxFreeIncome;
  @override
  @JsonKey(name: 'default_tax_free_expenses')
  String? get defaultTaxFreeExpenses;
  @override
  @JsonKey(name: 'default_not_reportable')
  String? get defaultNotReportable;
  @override
  @JsonKey(name: 'default_client_credits')
  String? get defaultClientCredits;
  @override
  @JsonKey(name: 'default_agent_fees')
  String? get defaultAgentFees;
  @override
  @JsonKey(name: 'default_dept_disbursements')
  String? get defaultDeptDisbursements;
  @override // Default bank account references
  @JsonKey(name: 'default_client_account')
  String? get defaultClientAccount;
  @override
  @JsonKey(name: 'default_office_account')
  String? get defaultOfficeAccount;
  @override
  @JsonKey(name: 'default_disbursements_account')
  String? get defaultDisbursementsAccount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirmPreferencesModelImplCopyWith<_$FirmPreferencesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
