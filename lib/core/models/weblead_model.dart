import 'package:freezed_annotation/freezed_annotation.dart';

part 'weblead_model.freezed.dart';
part 'weblead_model.g.dart';

@freezed
class WebLeadModel with _$WebLeadModel {
  const factory WebLeadModel({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? email,
    String? phone,
    @JsonKey(name: 'visa_interest') String? visaInterest,
    String? message,
    @JsonKey(name: 'referral_source') String? referralSource,
    @Default('new') String status,
    @JsonKey(name: 'reviewed_by') String? reviewedBy,
    @JsonKey(name: 'converted_matter_id') String? convertedMatterId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _WebLeadModel;

  factory WebLeadModel.fromJson(Map<String, dynamic> json) =>
      _$WebLeadModelFromJson(json);
}
