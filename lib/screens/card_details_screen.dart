import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/section/settins.dart';

import '../constants/theme_constants.dart';
import '../section/activity_card.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.container,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 290,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    color: ThemeColors.scaffold,
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 132.0),
                child: Center(
                  child: Text('Your Platinium Card', style: ThemeFonts.rrr20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 200, left: 71, right: 71),
                child: PlatCardService(
                  name: 'Adam Wise',
                ),
              ),
            ],
          ),
          const ActivityCard(),
          const Padding(
              padding: EdgeInsets.only(top: 48, left: 36, right: 36),
              child: SettingsUser()),
        ],
      ),
    );
  }
}

class PlatCardService extends StatelessWidget {
  final String name;

  const PlatCardService({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 272,
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/rectangle.png'),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 140, left: 21),
        child: Text(name, style: ThemeFonts.rr12),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 55, left: 21),
        child: Container(
          width: 42,
          height: 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: const DecorationImage(
              image: AssetImage('assets/images/chip.png'),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 113, left: 196),
        child: Container(
          width: 55,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: const DecorationImage(
              image: AssetImage('assets/images/logo_mastercard.png'),
            ),
          ),
        ),
      ),
    ]);
  }
}
