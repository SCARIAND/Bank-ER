import 'package:flutter/material.dart';

import 'package:todo/screens/home_screen.dart';
import 'package:todo/state/done_state.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _doneNotifier = DoneNotifier();
  @override
  Widget build(BuildContext context) {
    return DoneState(
      notifier: _doneNotifier,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Inter'),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
