// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaxCodeModel _$TaxCodeModelFromJson(Map<String, dynamic> json) {
  return _TaxCodeModel.fromJson(json);
}

/// @nodoc
mixin _$TaxCodeModel {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_income')
  bool get isIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_expense')
  bool get isExpense => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxCodeModelCopyWith<TaxCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxCodeModelCopyWith<$Res> {
  factory $TaxCodeModelCopyWith(
          TaxCodeModel value, $Res Function(TaxCodeModel) then) =
      _$TaxCodeModelCopyWithImpl<$Res, TaxCodeModel>;
  @useResult
  $Res call(
      {String id,
      String code,
      String description,
      double rate,
      @JsonKey(name: 'is_income') bool isIncome,
      @JsonKey(name: 'is_expense') bool isExpense,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$TaxCodeModelCopyWithImpl<$Res, $Val extends TaxCodeModel>
    implements $TaxCodeModelCopyWith<$Res> {
  _$TaxCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
    Object? rate = null,
    Object? isIncome = null,
    Object? isExpense = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpense: null == isExpense
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxCodeModelImplCopyWith<$Res>
    implements $TaxCodeModelCopyWith<$Res> {
  factory _$$TaxCodeModelImplCopyWith(
          _$TaxCodeModelImpl value, $Res Function(_$TaxCodeModelImpl) then) =
      __$$TaxCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String code,
      String description,
      double rate,
      @JsonKey(name: 'is_income') bool isIncome,
      @JsonKey(name: 'is_expense') bool isExpense,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$TaxCodeModelImplCopyWithImpl<$Res>
    extends _$TaxCodeModelCopyWithImpl<$Res, _$TaxCodeModelImpl>
    implements _$$TaxCodeModelImplCopyWith<$Res> {
  __$$TaxCodeModelImplCopyWithImpl(
      _$TaxCodeModelImpl _value, $Res Function(_$TaxCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
    Object? rate = null,
    Object? isIncome = null,
    Object? isExpense = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TaxCodeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpense: null == isExpense
          ? _value.isExpense
          : isExpense // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxCodeModelImpl implements _TaxCodeModel {
  const _$TaxCodeModelImpl(
      {required this.id,
      required this.code,
      this.description = '',
      this.rate = 0,
      @JsonKey(name: 'is_income') this.isIncome = false,
      @JsonKey(name: 'is_expense') this.isExpense = false,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$TaxCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxCodeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double rate;
  @override
  @JsonKey(name: 'is_income')
  final bool isIncome;
  @override
  @JsonKey(name: 'is_expense')
  final bool isExpense;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TaxCodeModel(id: $id, code: $code, description: $description, rate: $rate, isIncome: $isIncome, isExpense: $isExpense, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxCodeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.isExpense, isExpense) ||
                other.isExpense == isExpense) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, description, rate,
      isIncome, isExpense, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxCodeModelImplCopyWith<_$TaxCodeModelImpl> get copyWith =>
      __$$TaxCodeModelImplCopyWithImpl<_$TaxCodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxCodeModelImplToJson(
      this,
    );
  }
}

abstract class _TaxCodeModel implements TaxCodeModel {
  const factory _TaxCodeModel(
          {required final String id,
          required final String code,
          final String description,
          final double rate,
          @JsonKey(name: 'is_income') final bool isIncome,
          @JsonKey(name: 'is_expense') final bool isExpense,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$TaxCodeModelImpl;

  factory _TaxCodeModel.fromJson(Map<String, dynamic> json) =
      _$TaxCodeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  String get description;
  @override
  double get rate;
  @override
  @JsonKey(name: 'is_income')
  bool get isIncome;
  @override
  @JsonKey(name: 'is_expense')
  bool get isExpense;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TaxCodeModelImplCopyWith<_$TaxCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
