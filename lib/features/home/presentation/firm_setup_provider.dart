import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firm_setup_provider.g.dart';

@riverpod
class FirmSetupState extends _$FirmSetupState {
  @override
  Map<String, bool> build() {
    return {
      'firms_offices': false,
      'users': true, // Mock default showing "Done"
      'staff': false,
      'permissions': false,
      'preferences': false,
    };
  }

  void setDone(String key, bool isDone) {
    state = {
      ...state,
      key: isDone,
    };
  }
}
