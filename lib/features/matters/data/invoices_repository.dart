import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/invoice_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'invoices_repository.g.dart';

class InvoicesRepository {
  final Ref ref;
  InvoicesRepository(this.ref);

  Future<List<InvoiceModel>> getInvoices({String? matterId, String? status}) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('invoices').select();
    if (matterId != null) query = query.eq('matter_id', matterId);
    if (status != null) query = query.eq('status', status);
    final response = await query.order('created_at', ascending: false);
    return response.map((json) => InvoiceModel.fromJson(json)).toList();
  }

  Future<InvoiceModel> createInvoice(InvoiceModel invoice) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('invoices')
        .insert(invoice.toJson())
        .select()
        .single();
    return InvoiceModel.fromJson(response);
  }

  Future<void> updateInvoice(InvoiceModel invoice) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('invoices')
        .update(invoice.toJson())
        .eq('id', invoice.id);
  }

  Future<void> deleteInvoice(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('invoices').delete().eq('id', id);
  }

  // Invoice Items
  Future<List<InvoiceItemModel>> getInvoiceItems(String invoiceId) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('invoice_items')
        .select()
        .eq('invoice_id', invoiceId)
        .order('created_at', ascending: true);
    return response.map((json) => InvoiceItemModel.fromJson(json)).toList();
  }

  Future<InvoiceItemModel> addInvoiceItem(InvoiceItemModel item) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('invoice_items')
        .insert(item.toJson())
        .select()
        .single();
    return InvoiceItemModel.fromJson(response);
  }

  Future<void> updateInvoiceItem(InvoiceItemModel item) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('invoice_items')
        .update(item.toJson())
        .eq('id', item.id);
  }

  Future<void> deleteInvoiceItem(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('invoice_items').delete().eq('id', id);
  }

  /// Generate next invoice number
  Future<String> generateInvoiceNumber() async {
    final supabase = ref.read(supabaseClientProvider);
    final year = DateTime.now().year.toString();
    final prefix = 'INV-$year-';

    final response = await supabase
        .from('invoices')
        .select('invoice_number')
        .like('invoice_number', '$prefix%')
        .order('invoice_number', ascending: false)
        .limit(1);

    int nextNum = 1;
    if (response.isNotEmpty) {
      final lastNum =
          int.tryParse((response.first['invoice_number'] as String).split('-').last) ?? 0;
      nextNum = lastNum + 1;
    }

    return '$prefix${nextNum.toString().padLeft(5, '0')}';
  }
}

@riverpod
InvoicesRepository invoicesRepository(Ref ref) {
  return InvoicesRepository(ref);
}

@riverpod
Future<List<InvoiceModel>> invoicesList(Ref ref) {
  return ref.read(invoicesRepositoryProvider).getInvoices();
}
