// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceModelImpl _$$InvoiceModelImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceModelImpl(
      id: json['id'] as String,
      matterId: json['matter_id'] as String?,
      invoiceNumber: json['invoice_number'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0,
      tax: (json['tax'] as num?)?.toDouble() ?? 0,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      status: json['status'] as String? ?? 'draft',
      notes: json['notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$InvoiceModelImplToJson(_$InvoiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matter_id': instance.matterId,
      'invoice_number': instance.invoiceNumber,
      'date': instance.date?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'total': instance.total,
      'status': instance.status,
      'notes': instance.notes,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$InvoiceItemModelImpl _$$InvoiceItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceItemModelImpl(
      id: json['id'] as String,
      invoiceId: json['invoice_id'] as String,
      description: json['description'] as String,
      feeCodeId: json['fee_code_id'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 1,
      unitPrice: (json['unit_price'] as num?)?.toDouble() ?? 0,
      taxCodeId: json['tax_code_id'] as String?,
      total: (json['total'] as num?)?.toDouble() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$InvoiceItemModelImplToJson(
        _$InvoiceItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_id': instance.invoiceId,
      'description': instance.description,
      'fee_code_id': instance.feeCodeId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'tax_code_id': instance.taxCodeId,
      'total': instance.total,
      'created_at': instance.createdAt?.toIso8601String(),
    };
