// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PermissionEntry _$PermissionEntryFromJson(Map<String, dynamic> json) {
  return _PermissionEntry.fromJson(json);
}

/// @nodoc
mixin _$PermissionEntry {
  String get id => throw _privateConstructorUsedError;
  String get group =>
      throw _privateConstructorUsedError; // 'Accounts', 'File Notes', 'Admin', 'Users', 'Clients'
  String get name => throw _privateConstructorUsedError; // 'View File Notes'
  String get description => throw _privateConstructorUsedError;
  bool get isGranted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionEntryCopyWith<PermissionEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionEntryCopyWith<$Res> {
  factory $PermissionEntryCopyWith(
          PermissionEntry value, $Res Function(PermissionEntry) then) =
      _$PermissionEntryCopyWithImpl<$Res, PermissionEntry>;
  @useResult
  $Res call(
      {String id,
      String group,
      String name,
      String description,
      bool isGranted});
}

/// @nodoc
class _$PermissionEntryCopyWithImpl<$Res, $Val extends PermissionEntry>
    implements $PermissionEntryCopyWith<$Res> {
  _$PermissionEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group = null,
    Object? name = null,
    Object? description = null,
    Object? isGranted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isGranted: null == isGranted
          ? _value.isGranted
          : isGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionEntryImplCopyWith<$Res>
    implements $PermissionEntryCopyWith<$Res> {
  factory _$$PermissionEntryImplCopyWith(_$PermissionEntryImpl value,
          $Res Function(_$PermissionEntryImpl) then) =
      __$$PermissionEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String group,
      String name,
      String description,
      bool isGranted});
}

/// @nodoc
class __$$PermissionEntryImplCopyWithImpl<$Res>
    extends _$PermissionEntryCopyWithImpl<$Res, _$PermissionEntryImpl>
    implements _$$PermissionEntryImplCopyWith<$Res> {
  __$$PermissionEntryImplCopyWithImpl(
      _$PermissionEntryImpl _value, $Res Function(_$PermissionEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group = null,
    Object? name = null,
    Object? description = null,
    Object? isGranted = null,
  }) {
    return _then(_$PermissionEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isGranted: null == isGranted
          ? _value.isGranted
          : isGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionEntryImpl implements _PermissionEntry {
  const _$PermissionEntryImpl(
      {required this.id,
      required this.group,
      required this.name,
      required this.description,
      this.isGranted = false});

  factory _$PermissionEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String group;
// 'Accounts', 'File Notes', 'Admin', 'Users', 'Clients'
  @override
  final String name;
// 'View File Notes'
  @override
  final String description;
  @override
  @JsonKey()
  final bool isGranted;

  @override
  String toString() {
    return 'PermissionEntry(id: $id, group: $group, name: $name, description: $description, isGranted: $isGranted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isGranted, isGranted) ||
                other.isGranted == isGranted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, group, name, description, isGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionEntryImplCopyWith<_$PermissionEntryImpl> get copyWith =>
      __$$PermissionEntryImplCopyWithImpl<_$PermissionEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionEntryImplToJson(
      this,
    );
  }
}

abstract class _PermissionEntry implements PermissionEntry {
  const factory _PermissionEntry(
      {required final String id,
      required final String group,
      required final String name,
      required final String description,
      final bool isGranted}) = _$PermissionEntryImpl;

  factory _PermissionEntry.fromJson(Map<String, dynamic> json) =
      _$PermissionEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get group;
  @override // 'Accounts', 'File Notes', 'Admin', 'Users', 'Clients'
  String get name;
  @override // 'View File Notes'
  String get description;
  @override
  bool get isGranted;
  @override
  @JsonKey(ignore: true)
  _$$PermissionEntryImplCopyWith<_$PermissionEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
