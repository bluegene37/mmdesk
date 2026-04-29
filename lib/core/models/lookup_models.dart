import 'package:freezed_annotation/freezed_annotation.dart';

part 'lookup_models.freezed.dart';
part 'lookup_models.g.dart';

/// Generic lookup item used for simple tables like
/// contact_types, categories, matter_types, statuses,
/// departments, referral_sources, progress_lists, etc.
@freezed
class LookupItem with _$LookupItem {
  const factory LookupItem({
    required String id,
    required String name,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _LookupItem;

  factory LookupItem.fromJson(Map<String, dynamic> json) =>
      _$LookupItemFromJson(json);
}

/// Extended lookup for statuses (with color)
@freezed
class StatusItem with _$StatusItem {
  const factory StatusItem({
    required String id,
    required String name,
    String? color,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StatusItem;

  factory StatusItem.fromJson(Map<String, dynamic> json) =>
      _$StatusItemFromJson(json);
}

/// Extended lookup for visa types (with subclass & description)
@freezed
class VisaTypeItem with _$VisaTypeItem {
  const factory VisaTypeItem({
    required String id,
    required String name,
    String? subclass,
    String? description,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _VisaTypeItem;

  factory VisaTypeItem.fromJson(Map<String, dynamic> json) =>
      _$VisaTypeItemFromJson(json);
}

/// Code-based lookup for cost_codes, disbursement_codes, fee_codes
@freezed
class CodeItem with _$CodeItem {
  const factory CodeItem({
    required String id,
    required String code,
    String? description,
    @Default(0) double rate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CodeItem;

  factory CodeItem.fromJson(Map<String, dynamic> json) =>
      _$CodeItemFromJson(json);
}

/// Custom merge field
@freezed
class MergeFieldItem with _$MergeFieldItem {
  const factory MergeFieldItem({
    required String id,
    @JsonKey(name: 'field_name') required String fieldName,
    @JsonKey(name: 'field_key') required String fieldKey,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _MergeFieldItem;

  factory MergeFieldItem.fromJson(Map<String, dynamic> json) =>
      _$MergeFieldItemFromJson(json);
}

/// Quickpart snippet
@freezed
class QuickpartItem with _$QuickpartItem {
  const factory QuickpartItem({
    required String id,
    required String name,
    required String content,
    String? category,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _QuickpartItem;

  factory QuickpartItem.fromJson(Map<String, dynamic> json) =>
      _$QuickpartItemFromJson(json);
}

/// Standard directory
@freezed
class DirectoryItem with _$DirectoryItem {
  const factory DirectoryItem({
    required String id,
    required String name,
    String? path,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _DirectoryItem;

  factory DirectoryItem.fromJson(Map<String, dynamic> json) =>
      _$DirectoryItemFromJson(json);
}

/// Legal basis
@freezed
class LegalBasisItem with _$LegalBasisItem {
  const factory LegalBasisItem({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _LegalBasisItem;

  factory LegalBasisItem.fromJson(Map<String, dynamic> json) =>
      _$LegalBasisItemFromJson(json);
}
