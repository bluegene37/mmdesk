import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    required String id,
    @JsonKey(name: 'case_id') String? caseId,
    @JsonKey(name: 'client_id') String? clientId,
    @JsonKey(name: 'uploaded_by') required String uploadedBy,
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'file_path') required String filePath,
    @JsonKey(name: 'content_type') String? contentType,
    @JsonKey(name: 'file_size_bytes') int? fileSizeBytes,
    @JsonKey(name: 'is_sensitive') @Default(true) bool isSensitive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) => _$DocumentModelFromJson(json);
}
