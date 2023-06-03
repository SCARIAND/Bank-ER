
import '../models/contats_data.dart';
import '../models/done.dart';


class DoneProvider {
  final _done = Done();

  Future<Done> addContacts(ContactsData contacts) async {
    _done.addContacts(contacts);
    return _done;
  }
}
