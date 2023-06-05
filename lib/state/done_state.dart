import 'package:flutter/cupertino.dart';

import '../models/contats_data.dart';
import '../models/done.dart';

import '../providers/done_provider.dart';

class DoneNotifier extends ChangeNotifier {
  final _doneProvider = DoneProvider();

  Done done = Done();

  void addContacts(ContactsData contacts) async {
    done = await _doneProvider.addContacts(contacts);
    notifyListeners();
  }
}

class DoneState extends InheritedNotifier<DoneNotifier> {
  const DoneState({
    super.key,
    required super.child,
    required super.notifier,
  });

  static DoneNotifier of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DoneState>()!.notifier!;
  }
}
