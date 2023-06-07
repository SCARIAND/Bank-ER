import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/theme_constants.dart';

class SettingsUser extends StatelessWidget {
  const SettingsUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.container,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Settings', style: ThemeFonts.rr20),
          Column(children: [
            SizedBox(
              height: 75,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Set card limit', style: ThemeFonts.rr16),
                      Text('You set budget for 3 categories',
                          style: ThemeFonts.rr15),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Switch(
                  value: true,
                  activeColor: ThemeColors.scaffold,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 25),
              ]),
            ),
            const SizedBox(height: 20),
            const ContentLine(),
          ]),
          SizedBox(
            height: 75,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Set card limit', style: ThemeFonts.rr16),
                    Text('You set budget for 3 categories',
                        style: ThemeFonts.rr15),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              Switch(
                value: false,
                onChanged: (value) {},
              ),
              const SizedBox(width: 25),
            ]),
          ),
        ],
      ),
    );
  }
}
