import 'package:flutter/material.dart';
import '../constants/theme_constants.dart';
import 'activity.dart';
import 'box_cards.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38, left: 37, right: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: ActivityState(
                    icon: Icon(Icons.lock, color: ThemeColors.textBar),
                    text: 'Lock Card',

                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: ActivityState(
                    icon: Icon(Icons.shield, color: ThemeColors.textBar),
                    text: 'Chang PIN',
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: ActivityState(
                    icon: Icon(Icons.credit_card, color: ThemeColors.textBar),
                    text: 'Top Up',
                  ),
                ),
              ),
            ], // Added closing parenthesis here
          ),
        ],
      ),
    );
  }
}
