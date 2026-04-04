import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';
part 'permission_model.g.dart';

@freezed
class PermissionEntry with _$PermissionEntry {
  const factory PermissionEntry({
    required String id,
    required String group,     // 'Accounts', 'File Notes', 'Admin', 'Users', 'Clients'
    required String name,      // 'View File Notes'
    required String description,
    @Default(false) bool isGranted,
  }) = _PermissionEntry;

  factory PermissionEntry.fromJson(Map<String, dynamic> json) =>
      _$PermissionEntryFromJson(json);
}
