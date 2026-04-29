import 'package:freezed_annotation/freezed_annotation.dart';

part 'filenote_model.freezed.dart';
part 'filenote_model.g.dart';

@freezed
class FilenoteModel with _$FilenoteModel {
  const factory FilenoteModel({
    required String id,
    @JsonKey(name: 'matter_id') String? matterId,
    required String subject,
    String? action,
    @JsonKey(name: 'fee_earner_id') String? feeEarnerId,
    String? content,
    DateTime? date,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _FilenoteModel;

  factory FilenoteModel.fromJson(Map<String, dynamic> json) =>
      _$FilenoteModelFromJson(json);
}
