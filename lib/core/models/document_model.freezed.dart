// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'case_id')
  String? get caseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded_by')
  String get uploadedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size_bytes')
  int? get fileSizeBytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sensitive')
  bool get isSensitive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'case_id') String? caseId,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'uploaded_by') String uploadedBy,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_path') String filePath,
      @JsonKey(name: 'content_type') String? contentType,
      @JsonKey(name: 'file_size_bytes') int? fileSizeBytes,
      @JsonKey(name: 'is_sensitive') bool isSensitive,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caseId = freezed,
    Object? clientId = freezed,
    Object? uploadedBy = null,
    Object? fileName = null,
    Object? filePath = null,
    Object? contentType = freezed,
    Object? fileSizeBytes = freezed,
    Object? isSensitive = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      caseId: freezed == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: null == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSizeBytes: freezed == fileSizeBytes
          ? _value.fileSizeBytes
          : fileSizeBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentModelImplCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$DocumentModelImplCopyWith(
          _$DocumentModelImpl value, $Res Function(_$DocumentModelImpl) then) =
      __$$DocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'case_id') String? caseId,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'uploaded_by') String uploadedBy,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_path') String filePath,
      @JsonKey(name: 'content_type') String? contentType,
      @JsonKey(name: 'file_size_bytes') int? fileSizeBytes,
      @JsonKey(name: 'is_sensitive') bool isSensitive,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$DocumentModelImplCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$DocumentModelImpl>
    implements _$$DocumentModelImplCopyWith<$Res> {
  __$$DocumentModelImplCopyWithImpl(
      _$DocumentModelImpl _value, $Res Function(_$DocumentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? caseId = freezed,
    Object? clientId = freezed,
    Object? uploadedBy = null,
    Object? fileName = null,
    Object? filePath = null,
    Object? contentType = freezed,
    Object? fileSizeBytes = freezed,
    Object? isSensitive = null,
    Object? createdAt = null,
  }) {
    return _then(_$DocumentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      caseId: freezed == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedBy: null == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSizeBytes: freezed == fileSizeBytes
          ? _value.fileSizeBytes
          : fileSizeBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentModelImpl implements _DocumentModel {
  const _$DocumentModelImpl(
      {required this.id,
      @JsonKey(name: 'case_id') this.caseId,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'uploaded_by') required this.uploadedBy,
      @JsonKey(name: 'file_name') required this.fileName,
      @JsonKey(name: 'file_path') required this.filePath,
      @JsonKey(name: 'content_type') this.contentType,
      @JsonKey(name: 'file_size_bytes') this.fileSizeBytes,
      @JsonKey(name: 'is_sensitive') this.isSensitive = true,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$DocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'case_id')
  final String? caseId;
  @override
  @JsonKey(name: 'client_id')
  final String? clientId;
  @override
  @JsonKey(name: 'uploaded_by')
  final String uploadedBy;
  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey(name: 'file_path')
  final String filePath;
  @override
  @JsonKey(name: 'content_type')
  final String? contentType;
  @override
  @JsonKey(name: 'file_size_bytes')
  final int? fileSizeBytes;
  @override
  @JsonKey(name: 'is_sensitive')
  final bool isSensitive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'DocumentModel(id: $id, caseId: $caseId, clientId: $clientId, uploadedBy: $uploadedBy, fileName: $fileName, filePath: $filePath, contentType: $contentType, fileSizeBytes: $fileSizeBytes, isSensitive: $isSensitive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.uploadedBy, uploadedBy) ||
                other.uploadedBy == uploadedBy) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.fileSizeBytes, fileSizeBytes) ||
                other.fileSizeBytes == fileSizeBytes) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, caseId, clientId, uploadedBy,
      fileName, filePath, contentType, fileSizeBytes, isSensitive, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      __$$DocumentModelImplCopyWithImpl<_$DocumentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
          {required final String id,
          @JsonKey(name: 'case_id') final String? caseId,
          @JsonKey(name: 'client_id') final String? clientId,
          @JsonKey(name: 'uploaded_by') required final String uploadedBy,
          @JsonKey(name: 'file_name') required final String fileName,
          @JsonKey(name: 'file_path') required final String filePath,
          @JsonKey(name: 'content_type') final String? contentType,
          @JsonKey(name: 'file_size_bytes') final int? fileSizeBytes,
          @JsonKey(name: 'is_sensitive') final bool isSensitive,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$DocumentModelImpl;

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$DocumentModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'case_id')
  String? get caseId;
  @override
  @JsonKey(name: 'client_id')
  String? get clientId;
  @override
  @JsonKey(name: 'uploaded_by')
  String get uploadedBy;
  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  @JsonKey(name: 'file_path')
  String get filePath;
  @override
  @JsonKey(name: 'content_type')
  String? get contentType;
  @override
  @JsonKey(name: 'file_size_bytes')
  int? get fileSizeBytes;
  @override
  @JsonKey(name: 'is_sensitive')
  bool get isSensitive;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
