// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lookup_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LookupItem _$LookupItemFromJson(Map<String, dynamic> json) {
  return _LookupItem.fromJson(json);
}

/// @nodoc
mixin _$LookupItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LookupItemCopyWith<LookupItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LookupItemCopyWith<$Res> {
  factory $LookupItemCopyWith(
          LookupItem value, $Res Function(LookupItem) then) =
      _$LookupItemCopyWithImpl<$Res, LookupItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$LookupItemCopyWithImpl<$Res, $Val extends LookupItem>
    implements $LookupItemCopyWith<$Res> {
  _$LookupItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$LookupItemImplCopyWith<$Res>
    implements $LookupItemCopyWith<$Res> {
  factory _$$LookupItemImplCopyWith(
          _$LookupItemImpl value, $Res Function(_$LookupItemImpl) then) =
      __$$LookupItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$LookupItemImplCopyWithImpl<$Res>
    extends _$LookupItemCopyWithImpl<$Res, _$LookupItemImpl>
    implements _$$LookupItemImplCopyWith<$Res> {
  __$$LookupItemImplCopyWithImpl(
      _$LookupItemImpl _value, $Res Function(_$LookupItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LookupItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$LookupItemImpl implements _LookupItem {
  const _$LookupItemImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'sort_order') this.sortOrder = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$LookupItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LookupItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LookupItem(id: $id, name: $name, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LookupItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, sortOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LookupItemImplCopyWith<_$LookupItemImpl> get copyWith =>
      __$$LookupItemImplCopyWithImpl<_$LookupItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LookupItemImplToJson(
      this,
    );
  }
}

abstract class _LookupItem implements LookupItem {
  const factory _LookupItem(
          {required final String id,
          required final String name,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$LookupItemImpl;

  factory _LookupItem.fromJson(Map<String, dynamic> json) =
      _$LookupItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LookupItemImplCopyWith<_$LookupItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusItem _$StatusItemFromJson(Map<String, dynamic> json) {
  return _StatusItem.fromJson(json);
}

/// @nodoc
mixin _$StatusItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusItemCopyWith<StatusItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusItemCopyWith<$Res> {
  factory $StatusItemCopyWith(
          StatusItem value, $Res Function(StatusItem) then) =
      _$StatusItemCopyWithImpl<$Res, StatusItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? color,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StatusItemCopyWithImpl<$Res, $Val extends StatusItem>
    implements $StatusItemCopyWith<$Res> {
  _$StatusItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$StatusItemImplCopyWith<$Res>
    implements $StatusItemCopyWith<$Res> {
  factory _$$StatusItemImplCopyWith(
          _$StatusItemImpl value, $Res Function(_$StatusItemImpl) then) =
      __$$StatusItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? color,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StatusItemImplCopyWithImpl<$Res>
    extends _$StatusItemCopyWithImpl<$Res, _$StatusItemImpl>
    implements _$$StatusItemImplCopyWith<$Res> {
  __$$StatusItemImplCopyWithImpl(
      _$StatusItemImpl _value, $Res Function(_$StatusItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StatusItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$StatusItemImpl implements _StatusItem {
  const _$StatusItemImpl(
      {required this.id,
      required this.name,
      this.color,
      @JsonKey(name: 'sort_order') this.sortOrder = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StatusItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? color;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StatusItem(id: $id, name: $name, color: $color, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, color, sortOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusItemImplCopyWith<_$StatusItemImpl> get copyWith =>
      __$$StatusItemImplCopyWithImpl<_$StatusItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusItemImplToJson(
      this,
    );
  }
}

abstract class _StatusItem implements StatusItem {
  const factory _StatusItem(
          {required final String id,
          required final String name,
          final String? color,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$StatusItemImpl;

  factory _StatusItem.fromJson(Map<String, dynamic> json) =
      _$StatusItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get color;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$StatusItemImplCopyWith<_$StatusItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VisaTypeItem _$VisaTypeItemFromJson(Map<String, dynamic> json) {
  return _VisaTypeItem.fromJson(json);
}

/// @nodoc
mixin _$VisaTypeItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get subclass => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisaTypeItemCopyWith<VisaTypeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisaTypeItemCopyWith<$Res> {
  factory $VisaTypeItemCopyWith(
          VisaTypeItem value, $Res Function(VisaTypeItem) then) =
      _$VisaTypeItemCopyWithImpl<$Res, VisaTypeItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? subclass,
      String? description,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$VisaTypeItemCopyWithImpl<$Res, $Val extends VisaTypeItem>
    implements $VisaTypeItemCopyWith<$Res> {
  _$VisaTypeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subclass = freezed,
    Object? description = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subclass: freezed == subclass
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$VisaTypeItemImplCopyWith<$Res>
    implements $VisaTypeItemCopyWith<$Res> {
  factory _$$VisaTypeItemImplCopyWith(
          _$VisaTypeItemImpl value, $Res Function(_$VisaTypeItemImpl) then) =
      __$$VisaTypeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? subclass,
      String? description,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$VisaTypeItemImplCopyWithImpl<$Res>
    extends _$VisaTypeItemCopyWithImpl<$Res, _$VisaTypeItemImpl>
    implements _$$VisaTypeItemImplCopyWith<$Res> {
  __$$VisaTypeItemImplCopyWithImpl(
      _$VisaTypeItemImpl _value, $Res Function(_$VisaTypeItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subclass = freezed,
    Object? description = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$VisaTypeItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subclass: freezed == subclass
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$VisaTypeItemImpl implements _VisaTypeItem {
  const _$VisaTypeItemImpl(
      {required this.id,
      required this.name,
      this.subclass,
      this.description,
      @JsonKey(name: 'sort_order') this.sortOrder = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$VisaTypeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisaTypeItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? subclass;
  @override
  final String? description;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'VisaTypeItem(id: $id, name: $name, subclass: $subclass, description: $description, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisaTypeItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subclass, subclass) ||
                other.subclass == subclass) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, subclass, description,
      sortOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisaTypeItemImplCopyWith<_$VisaTypeItemImpl> get copyWith =>
      __$$VisaTypeItemImplCopyWithImpl<_$VisaTypeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisaTypeItemImplToJson(
      this,
    );
  }
}

abstract class _VisaTypeItem implements VisaTypeItem {
  const factory _VisaTypeItem(
          {required final String id,
          required final String name,
          final String? subclass,
          final String? description,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$VisaTypeItemImpl;

  factory _VisaTypeItem.fromJson(Map<String, dynamic> json) =
      _$VisaTypeItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get subclass;
  @override
  String? get description;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$VisaTypeItemImplCopyWith<_$VisaTypeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeItem _$CodeItemFromJson(Map<String, dynamic> json) {
  return _CodeItem.fromJson(json);
}

/// @nodoc
mixin _$CodeItem {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeItemCopyWith<CodeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeItemCopyWith<$Res> {
  factory $CodeItemCopyWith(CodeItem value, $Res Function(CodeItem) then) =
      _$CodeItemCopyWithImpl<$Res, CodeItem>;
  @useResult
  $Res call(
      {String id,
      String code,
      String? description,
      double rate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CodeItemCopyWithImpl<$Res, $Val extends CodeItem>
    implements $CodeItemCopyWith<$Res> {
  _$CodeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = freezed,
    Object? rate = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$CodeItemImplCopyWith<$Res>
    implements $CodeItemCopyWith<$Res> {
  factory _$$CodeItemImplCopyWith(
          _$CodeItemImpl value, $Res Function(_$CodeItemImpl) then) =
      __$$CodeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String code,
      String? description,
      double rate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CodeItemImplCopyWithImpl<$Res>
    extends _$CodeItemCopyWithImpl<$Res, _$CodeItemImpl>
    implements _$$CodeItemImplCopyWith<$Res> {
  __$$CodeItemImplCopyWithImpl(
      _$CodeItemImpl _value, $Res Function(_$CodeItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = freezed,
    Object? rate = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CodeItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$CodeItemImpl implements _CodeItem {
  const _$CodeItemImpl(
      {required this.id,
      required this.code,
      this.description,
      this.rate = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CodeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeItemImplFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final String? description;
  @override
  @JsonKey()
  final double rate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CodeItem(id: $id, code: $code, description: $description, rate: $rate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, code, description, rate, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeItemImplCopyWith<_$CodeItemImpl> get copyWith =>
      __$$CodeItemImplCopyWithImpl<_$CodeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeItemImplToJson(
      this,
    );
  }
}

abstract class _CodeItem implements CodeItem {
  const factory _CodeItem(
      {required final String id,
      required final String code,
      final String? description,
      final double rate,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$CodeItemImpl;

  factory _CodeItem.fromJson(Map<String, dynamic> json) =
      _$CodeItemImpl.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  String? get description;
  @override
  double get rate;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CodeItemImplCopyWith<_$CodeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MergeFieldItem _$MergeFieldItemFromJson(Map<String, dynamic> json) {
  return _MergeFieldItem.fromJson(json);
}

/// @nodoc
mixin _$MergeFieldItem {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_name')
  String get fieldName => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_key')
  String get fieldKey => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MergeFieldItemCopyWith<MergeFieldItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeFieldItemCopyWith<$Res> {
  factory $MergeFieldItemCopyWith(
          MergeFieldItem value, $Res Function(MergeFieldItem) then) =
      _$MergeFieldItemCopyWithImpl<$Res, MergeFieldItem>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'field_key') String fieldKey,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MergeFieldItemCopyWithImpl<$Res, $Val extends MergeFieldItem>
    implements $MergeFieldItemCopyWith<$Res> {
  _$MergeFieldItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldName = null,
    Object? fieldKey = null,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      fieldKey: null == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MergeFieldItemImplCopyWith<$Res>
    implements $MergeFieldItemCopyWith<$Res> {
  factory _$$MergeFieldItemImplCopyWith(_$MergeFieldItemImpl value,
          $Res Function(_$MergeFieldItemImpl) then) =
      __$$MergeFieldItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'field_key') String fieldKey,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$MergeFieldItemImplCopyWithImpl<$Res>
    extends _$MergeFieldItemCopyWithImpl<$Res, _$MergeFieldItemImpl>
    implements _$$MergeFieldItemImplCopyWith<$Res> {
  __$$MergeFieldItemImplCopyWithImpl(
      _$MergeFieldItemImpl _value, $Res Function(_$MergeFieldItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldName = null,
    Object? fieldKey = null,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MergeFieldItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      fieldKey: null == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$MergeFieldItemImpl implements _MergeFieldItem {
  const _$MergeFieldItemImpl(
      {required this.id,
      @JsonKey(name: 'field_name') required this.fieldName,
      @JsonKey(name: 'field_key') required this.fieldKey,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$MergeFieldItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MergeFieldItemImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'field_name')
  final String fieldName;
  @override
  @JsonKey(name: 'field_key')
  final String fieldKey;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MergeFieldItem(id: $id, fieldName: $fieldName, fieldKey: $fieldKey, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MergeFieldItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fieldName, fieldKey, description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MergeFieldItemImplCopyWith<_$MergeFieldItemImpl> get copyWith =>
      __$$MergeFieldItemImplCopyWithImpl<_$MergeFieldItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MergeFieldItemImplToJson(
      this,
    );
  }
}

abstract class _MergeFieldItem implements MergeFieldItem {
  const factory _MergeFieldItem(
          {required final String id,
          @JsonKey(name: 'field_name') required final String fieldName,
          @JsonKey(name: 'field_key') required final String fieldKey,
          final String? description,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$MergeFieldItemImpl;

  factory _MergeFieldItem.fromJson(Map<String, dynamic> json) =
      _$MergeFieldItemImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'field_name')
  String get fieldName;
  @override
  @JsonKey(name: 'field_key')
  String get fieldKey;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MergeFieldItemImplCopyWith<_$MergeFieldItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuickpartItem _$QuickpartItemFromJson(Map<String, dynamic> json) {
  return _QuickpartItem.fromJson(json);
}

/// @nodoc
mixin _$QuickpartItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuickpartItemCopyWith<QuickpartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickpartItemCopyWith<$Res> {
  factory $QuickpartItemCopyWith(
          QuickpartItem value, $Res Function(QuickpartItem) then) =
      _$QuickpartItemCopyWithImpl<$Res, QuickpartItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String content,
      String? category,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$QuickpartItemCopyWithImpl<$Res, $Val extends QuickpartItem>
    implements $QuickpartItemCopyWith<$Res> {
  _$QuickpartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = null,
    Object? category = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$QuickpartItemImplCopyWith<$Res>
    implements $QuickpartItemCopyWith<$Res> {
  factory _$$QuickpartItemImplCopyWith(
          _$QuickpartItemImpl value, $Res Function(_$QuickpartItemImpl) then) =
      __$$QuickpartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String content,
      String? category,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$QuickpartItemImplCopyWithImpl<$Res>
    extends _$QuickpartItemCopyWithImpl<$Res, _$QuickpartItemImpl>
    implements _$$QuickpartItemImplCopyWith<$Res> {
  __$$QuickpartItemImplCopyWithImpl(
      _$QuickpartItemImpl _value, $Res Function(_$QuickpartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = null,
    Object? category = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$QuickpartItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$QuickpartItemImpl implements _QuickpartItem {
  const _$QuickpartItemImpl(
      {required this.id,
      required this.name,
      required this.content,
      this.category,
      @JsonKey(name: 'sort_order') this.sortOrder = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$QuickpartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuickpartItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String content;
  @override
  final String? category;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'QuickpartItem(id: $id, name: $name, content: $content, category: $category, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickpartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, content, category,
      sortOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickpartItemImplCopyWith<_$QuickpartItemImpl> get copyWith =>
      __$$QuickpartItemImplCopyWithImpl<_$QuickpartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuickpartItemImplToJson(
      this,
    );
  }
}

abstract class _QuickpartItem implements QuickpartItem {
  const factory _QuickpartItem(
          {required final String id,
          required final String name,
          required final String content,
          final String? category,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$QuickpartItemImpl;

  factory _QuickpartItem.fromJson(Map<String, dynamic> json) =
      _$QuickpartItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get content;
  @override
  String? get category;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$QuickpartItemImplCopyWith<_$QuickpartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectoryItem _$DirectoryItemFromJson(Map<String, dynamic> json) {
  return _DirectoryItem.fromJson(json);
}

/// @nodoc
mixin _$DirectoryItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectoryItemCopyWith<DirectoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryItemCopyWith<$Res> {
  factory $DirectoryItemCopyWith(
          DirectoryItem value, $Res Function(DirectoryItem) then) =
      _$DirectoryItemCopyWithImpl<$Res, DirectoryItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? path,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$DirectoryItemCopyWithImpl<$Res, $Val extends DirectoryItem>
    implements $DirectoryItemCopyWith<$Res> {
  _$DirectoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? path = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$DirectoryItemImplCopyWith<$Res>
    implements $DirectoryItemCopyWith<$Res> {
  factory _$$DirectoryItemImplCopyWith(
          _$DirectoryItemImpl value, $Res Function(_$DirectoryItemImpl) then) =
      __$$DirectoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? path,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$DirectoryItemImplCopyWithImpl<$Res>
    extends _$DirectoryItemCopyWithImpl<$Res, _$DirectoryItemImpl>
    implements _$$DirectoryItemImplCopyWith<$Res> {
  __$$DirectoryItemImplCopyWithImpl(
      _$DirectoryItemImpl _value, $Res Function(_$DirectoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? path = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DirectoryItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$DirectoryItemImpl implements _DirectoryItem {
  const _$DirectoryItemImpl(
      {required this.id,
      required this.name,
      this.path,
      @JsonKey(name: 'sort_order') this.sortOrder = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$DirectoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectoryItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? path;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'DirectoryItem(id: $id, name: $name, path: $path, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectoryItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, path, sortOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectoryItemImplCopyWith<_$DirectoryItemImpl> get copyWith =>
      __$$DirectoryItemImplCopyWithImpl<_$DirectoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectoryItemImplToJson(
      this,
    );
  }
}

abstract class _DirectoryItem implements DirectoryItem {
  const factory _DirectoryItem(
          {required final String id,
          required final String name,
          final String? path,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$DirectoryItemImpl;

  factory _DirectoryItem.fromJson(Map<String, dynamic> json) =
      _$DirectoryItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get path;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DirectoryItemImplCopyWith<_$DirectoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LegalBasisItem _$LegalBasisItemFromJson(Map<String, dynamic> json) {
  return _LegalBasisItem.fromJson(json);
}

/// @nodoc
mixin _$LegalBasisItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegalBasisItemCopyWith<LegalBasisItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalBasisItemCopyWith<$Res> {
  factory $LegalBasisItemCopyWith(
          LegalBasisItem value, $Res Function(LegalBasisItem) then) =
      _$LegalBasisItemCopyWithImpl<$Res, LegalBasisItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$LegalBasisItemCopyWithImpl<$Res, $Val extends LegalBasisItem>
    implements $LegalBasisItemCopyWith<$Res> {
  _$LegalBasisItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$LegalBasisItemImplCopyWith<$Res>
    implements $LegalBasisItemCopyWith<$Res> {
  factory _$$LegalBasisItemImplCopyWith(_$LegalBasisItemImpl value,
          $Res Function(_$LegalBasisItemImpl) then) =
      __$$LegalBasisItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'sort_order') int sortOrder,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$LegalBasisItemImplCopyWithImpl<$Res>
    extends _$LegalBasisItemCopyWithImpl<$Res, _$LegalBasisItemImpl>
    implements _$$LegalBasisItemImplCopyWith<$Res> {
  __$$LegalBasisItemImplCopyWithImpl(
      _$LegalBasisItemImpl _value, $Res Function(_$LegalBasisItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LegalBasisItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$LegalBasisItemImpl implements _LegalBasisItem {
  const _$LegalBasisItemImpl(
      {required this.id,
      required this.name,
      this.description,
      @JsonKey(name: 'sort_order') this.sortOrder = 0,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$LegalBasisItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LegalBasisItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LegalBasisItem(id: $id, name: $name, description: $description, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegalBasisItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, sortOrder, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LegalBasisItemImplCopyWith<_$LegalBasisItemImpl> get copyWith =>
      __$$LegalBasisItemImplCopyWithImpl<_$LegalBasisItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LegalBasisItemImplToJson(
      this,
    );
  }
}

abstract class _LegalBasisItem implements LegalBasisItem {
  const factory _LegalBasisItem(
          {required final String id,
          required final String name,
          final String? description,
          @JsonKey(name: 'sort_order') final int sortOrder,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$LegalBasisItemImpl;

  factory _LegalBasisItem.fromJson(Map<String, dynamic> json) =
      _$LegalBasisItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LegalBasisItemImplCopyWith<_$LegalBasisItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
