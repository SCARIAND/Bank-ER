import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';

import '../section/recent.dart';
import '../section/transfer_page.dart';
import '../section/transfer_user.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.scaffoldAP,
        elevation: 0,
        toolbarHeight: 200,
        automaticallyImplyLeading: false,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        title: Column(
          children: const [TransferUser()],
        ),
      ),
      body: ListView(
        children: const [
          RecentUser(),
          TransferPage(),
        ],
      ),
    );
  }
}
