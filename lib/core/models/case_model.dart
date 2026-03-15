import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_model.freezed.dart';
part 'case_model.g.dart';

enum CaseType { visa, citizenship, asylum, corporate, other }
enum CaseStatus { open, in_progress, pending_documents, submitted, approved, rejected, closed }
enum PriorityLevel { low, medium, high, urgent }

@freezed
class CaseModel with _$CaseModel {
  const factory CaseModel({
    required String id,
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'agent_id') required String agentId,
    required CaseType type,
    required CaseStatus status,
    required PriorityLevel priority,
    String? description,
    @JsonKey(name: 'expiry_date') DateTime? expiryDate,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _CaseModel;

  factory CaseModel.fromJson(Map<String, dynamic> json) => _$CaseModelFromJson(json);
}
