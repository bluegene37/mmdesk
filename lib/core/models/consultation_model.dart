import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_model.freezed.dart';
part 'consultation_model.g.dart';

@freezed
class ConsultationModel with _$ConsultationModel {
  const factory ConsultationModel({
    required String id,
    @JsonKey(name: 'matter_id') String? matterId,
    @JsonKey(name: 'client_id') String? clientId,
    @JsonKey(name: 'staff_id') String? staffId,
    required DateTime date,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @Default('initial') String type,
    String? notes,
    @Default(0) double fee,
    @Default('scheduled') String status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ConsultationModel;

  factory ConsultationModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultationModelFromJson(json);
}
