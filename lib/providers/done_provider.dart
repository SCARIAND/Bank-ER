import '../models/contats_data.dart';
import '../models/done_data.dart';

class NameProvider {
  DoneData _name = DoneData([]);

  Future<DoneData> addContacts(ContactsData contacts) async {
    _name = DoneData([..._name.names, contacts]);
    return _name;
  }
}
