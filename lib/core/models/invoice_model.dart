import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
class InvoiceModel with _$InvoiceModel {
  const factory InvoiceModel({
    required String id,
    @JsonKey(name: 'matter_id') String? matterId,
    @JsonKey(name: 'invoice_number') required String invoiceNumber,
    DateTime? date,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @Default(0) double subtotal,
    @Default(0) double tax,
    @Default(0) double total,
    @Default('draft') String status,
    String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _InvoiceModel;

  factory InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceModelFromJson(json);
}

@freezed
class InvoiceItemModel with _$InvoiceItemModel {
  const factory InvoiceItemModel({
    required String id,
    @JsonKey(name: 'invoice_id') required String invoiceId,
    required String description,
    @JsonKey(name: 'fee_code_id') String? feeCodeId,
    @Default(1) double quantity,
    @JsonKey(name: 'unit_price') @Default(0) double unitPrice,
    @JsonKey(name: 'tax_code_id') String? taxCodeId,
    @Default(0) double total,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InvoiceItemModel;

  factory InvoiceItemModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemModelFromJson(json);
}
