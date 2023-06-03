import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../models/contats_data.dart';
import '../providers/contats_provider.dart';

class ContactsNotifier extends ChangeNotifier {
  final _contactsProvider = GetIt.instance.get<ContactsProvider>();

  ContactsNotifier() {
    loadContacts();
  }

  List<ContactsData> contacts = const [];

  void loadContacts() async {
    contacts = await _contactsProvider.getContacts();
    notifyListeners();
  }
}

class ContactsState extends InheritedNotifier<ContactsNotifier> {
  const ContactsState({
    super.key,
    required super.child,
    required super.notifier,
  });

  static ContactsNotifier of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ContactsState>();

    if (result == null) {
      throw Exception('ContactsState not found');
    }

    return result.notifier!;
  }
}
