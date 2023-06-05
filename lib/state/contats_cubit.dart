import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/contats_data.dart';
import '../providers/contats_provider.dart';

class ContactsCubit extends Cubit<List<ContactsData>> {
  final _contactsProvider = ContactsProvider();
  ContactsCubit() : super([]) {
    load();
  }

  void load() async {
    emit(await _contactsProvider.getContacts());
  }
}
