// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) {
  return _InvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$InvoiceModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'matter_id')
  String? get matterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_number')
  String get invoiceNumber => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dueDate => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get tax => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceModelCopyWith<InvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceModelCopyWith<$Res> {
  factory $InvoiceModelCopyWith(
          InvoiceModel value, $Res Function(InvoiceModel) then) =
      _$InvoiceModelCopyWithImpl<$Res, InvoiceModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String? matterId,
      @JsonKey(name: 'invoice_number') String invoiceNumber,
      DateTime? date,
      @JsonKey(name: 'due_date') DateTime? dueDate,
      double subtotal,
      double tax,
      double total,
      String status,
      String? notes,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$InvoiceModelCopyWithImpl<$Res, $Val extends InvoiceModel>
    implements $InvoiceModelCopyWith<$Res> {
  _$InvoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = freezed,
    Object? invoiceNumber = null,
    Object? date = freezed,
    Object? dueDate = freezed,
    Object? subtotal = null,
    Object? tax = null,
    Object? total = null,
    Object? status = null,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: freezed == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InvoiceModelImplCopyWith<$Res>
    implements $InvoiceModelCopyWith<$Res> {
  factory _$$InvoiceModelImplCopyWith(
          _$InvoiceModelImpl value, $Res Function(_$InvoiceModelImpl) then) =
      __$$InvoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String? matterId,
      @JsonKey(name: 'invoice_number') String invoiceNumber,
      DateTime? date,
      @JsonKey(name: 'due_date') DateTime? dueDate,
      double subtotal,
      double tax,
      double total,
      String status,
      String? notes,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$InvoiceModelImplCopyWithImpl<$Res>
    extends _$InvoiceModelCopyWithImpl<$Res, _$InvoiceModelImpl>
    implements _$$InvoiceModelImplCopyWith<$Res> {
  __$$InvoiceModelImplCopyWithImpl(
      _$InvoiceModelImpl _value, $Res Function(_$InvoiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = freezed,
    Object? invoiceNumber = null,
    Object? date = freezed,
    Object? dueDate = freezed,
    Object? subtotal = null,
    Object? tax = null,
    Object? total = null,
    Object? status = null,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InvoiceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: freezed == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$InvoiceModelImpl implements _InvoiceModel {
  const _$InvoiceModelImpl(
      {required this.id,
      @JsonKey(name: 'matter_id') this.matterId,
      @JsonKey(name: 'invoice_number') required this.invoiceNumber,
      this.date,
      @JsonKey(name: 'due_date') this.dueDate,
      this.subtotal = 0,
      this.tax = 0,
      this.total = 0,
      this.status = 'draft',
      this.notes,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$InvoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'matter_id')
  final String? matterId;
  @override
  @JsonKey(name: 'invoice_number')
  final String invoiceNumber;
  @override
  final DateTime? date;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  @override
  @JsonKey()
  final double subtotal;
  @override
  @JsonKey()
  final double tax;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final String status;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'InvoiceModel(id: $id, matterId: $matterId, invoiceNumber: $invoiceNumber, date: $date, dueDate: $dueDate, subtotal: $subtotal, tax: $tax, total: $total, status: $status, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matterId, matterId) ||
                other.matterId == matterId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, matterId, invoiceNumber,
      date, dueDate, subtotal, tax, total, status, notes, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceModelImplCopyWith<_$InvoiceModelImpl> get copyWith =>
      __$$InvoiceModelImplCopyWithImpl<_$InvoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceModelImplToJson(
      this,
    );
  }
}

abstract class _InvoiceModel implements InvoiceModel {
  const factory _InvoiceModel(
          {required final String id,
          @JsonKey(name: 'matter_id') final String? matterId,
          @JsonKey(name: 'invoice_number') required final String invoiceNumber,
          final DateTime? date,
          @JsonKey(name: 'due_date') final DateTime? dueDate,
          final double subtotal,
          final double tax,
          final double total,
          final String status,
          final String? notes,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$InvoiceModelImpl;

  factory _InvoiceModel.fromJson(Map<String, dynamic> json) =
      _$InvoiceModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'matter_id')
  String? get matterId;
  @override
  @JsonKey(name: 'invoice_number')
  String get invoiceNumber;
  @override
  DateTime? get date;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dueDate;
  @override
  double get subtotal;
  @override
  double get tax;
  @override
  double get total;
  @override
  String get status;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceModelImplCopyWith<_$InvoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceItemModel _$InvoiceItemModelFromJson(Map<String, dynamic> json) {
  return _InvoiceItemModel.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItemModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_id')
  String get invoiceId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee_code_id')
  String? get feeCodeId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  double get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_code_id')
  String? get taxCodeId => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemModelCopyWith<InvoiceItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemModelCopyWith<$Res> {
  factory $InvoiceItemModelCopyWith(
          InvoiceItemModel value, $Res Function(InvoiceItemModel) then) =
      _$InvoiceItemModelCopyWithImpl<$Res, InvoiceItemModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'invoice_id') String invoiceId,
      String description,
      @JsonKey(name: 'fee_code_id') String? feeCodeId,
      double quantity,
      @JsonKey(name: 'unit_price') double unitPrice,
      @JsonKey(name: 'tax_code_id') String? taxCodeId,
      double total,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$InvoiceItemModelCopyWithImpl<$Res, $Val extends InvoiceItemModel>
    implements $InvoiceItemModelCopyWith<$Res> {
  _$InvoiceItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceId = null,
    Object? description = null,
    Object? feeCodeId = freezed,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? taxCodeId = freezed,
    Object? total = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      feeCodeId: freezed == feeCodeId
          ? _value.feeCodeId
          : feeCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      taxCodeId: freezed == taxCodeId
          ? _value.taxCodeId
          : taxCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceItemModelImplCopyWith<$Res>
    implements $InvoiceItemModelCopyWith<$Res> {
  factory _$$InvoiceItemModelImplCopyWith(_$InvoiceItemModelImpl value,
          $Res Function(_$InvoiceItemModelImpl) then) =
      __$$InvoiceItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'invoice_id') String invoiceId,
      String description,
      @JsonKey(name: 'fee_code_id') String? feeCodeId,
      double quantity,
      @JsonKey(name: 'unit_price') double unitPrice,
      @JsonKey(name: 'tax_code_id') String? taxCodeId,
      double total,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$InvoiceItemModelImplCopyWithImpl<$Res>
    extends _$InvoiceItemModelCopyWithImpl<$Res, _$InvoiceItemModelImpl>
    implements _$$InvoiceItemModelImplCopyWith<$Res> {
  __$$InvoiceItemModelImplCopyWithImpl(_$InvoiceItemModelImpl _value,
      $Res Function(_$InvoiceItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceId = null,
    Object? description = null,
    Object? feeCodeId = freezed,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? taxCodeId = freezed,
    Object? total = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$InvoiceItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      feeCodeId: freezed == feeCodeId
          ? _value.feeCodeId
          : feeCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      taxCodeId: freezed == taxCodeId
          ? _value.taxCodeId
          : taxCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceItemModelImpl implements _InvoiceItemModel {
  const _$InvoiceItemModelImpl(
      {required this.id,
      @JsonKey(name: 'invoice_id') required this.invoiceId,
      required this.description,
      @JsonKey(name: 'fee_code_id') this.feeCodeId,
      this.quantity = 1,
      @JsonKey(name: 'unit_price') this.unitPrice = 0,
      @JsonKey(name: 'tax_code_id') this.taxCodeId,
      this.total = 0,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$InvoiceItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceItemModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'invoice_id')
  final String invoiceId;
  @override
  final String description;
  @override
  @JsonKey(name: 'fee_code_id')
  final String? feeCodeId;
  @override
  @JsonKey()
  final double quantity;
  @override
  @JsonKey(name: 'unit_price')
  final double unitPrice;
  @override
  @JsonKey(name: 'tax_code_id')
  final String? taxCodeId;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'InvoiceItemModel(id: $id, invoiceId: $invoiceId, description: $description, feeCodeId: $feeCodeId, quantity: $quantity, unitPrice: $unitPrice, taxCodeId: $taxCodeId, total: $total, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.feeCodeId, feeCodeId) ||
                other.feeCodeId == feeCodeId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.taxCodeId, taxCodeId) ||
                other.taxCodeId == taxCodeId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, invoiceId, description,
      feeCodeId, quantity, unitPrice, taxCodeId, total, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemModelImplCopyWith<_$InvoiceItemModelImpl> get copyWith =>
      __$$InvoiceItemModelImplCopyWithImpl<_$InvoiceItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceItemModelImplToJson(
      this,
    );
  }
}

abstract class _InvoiceItemModel implements InvoiceItemModel {
  const factory _InvoiceItemModel(
          {required final String id,
          @JsonKey(name: 'invoice_id') required final String invoiceId,
          required final String description,
          @JsonKey(name: 'fee_code_id') final String? feeCodeId,
          final double quantity,
          @JsonKey(name: 'unit_price') final double unitPrice,
          @JsonKey(name: 'tax_code_id') final String? taxCodeId,
          final double total,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$InvoiceItemModelImpl;

  factory _InvoiceItemModel.fromJson(Map<String, dynamic> json) =
      _$InvoiceItemModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'invoice_id')
  String get invoiceId;
  @override
  String get description;
  @override
  @JsonKey(name: 'fee_code_id')
  String? get feeCodeId;
  @override
  double get quantity;
  @override
  @JsonKey(name: 'unit_price')
  double get unitPrice;
  @override
  @JsonKey(name: 'tax_code_id')
  String? get taxCodeId;
  @override
  double get total;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceItemModelImplCopyWith<_$InvoiceItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
