import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/balance_data.dart';
import '../providers/balance_provider.dart';

class BalanceCubit extends Cubit<BalanceData?> {
  final _balanceProvider = BalanceProvider();
  BalanceCubit() : super(null) {
    load();
  }

  void load() async {
    emit(await _balanceProvider.getBalance());
  }
}
