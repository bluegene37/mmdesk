import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_code_model.freezed.dart';
part 'tax_code_model.g.dart';

@freezed
class TaxCodeModel with _$TaxCodeModel {
  const factory TaxCodeModel({
    required String id,
    required String code,
    @Default('') String description,
    @Default(0) double rate,
    @JsonKey(name: 'is_income') @Default(false) bool isIncome,
    @JsonKey(name: 'is_expense') @Default(false) bool isExpense,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _TaxCodeModel;

  factory TaxCodeModel.fromJson(Map<String, dynamic> json) =>
      _$TaxCodeModelFromJson(json);
}
