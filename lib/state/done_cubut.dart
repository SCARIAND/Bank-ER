import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/contats_data.dart';
import '../models/done_data.dart';
import '../providers/done_provider.dart';

class DoneCubit extends Cubit<DoneData> {
  final _nameProvider = NameProvider();
  DoneCubit() : super(DoneData([]));

  void addContacts(ContactsData contacts) async {
    final done = await _nameProvider.addContacts(contacts);
    emit(done);



  }

}

