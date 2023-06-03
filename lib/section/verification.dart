import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import 'box_cards.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, left: 37, right: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text('Complete Verification', style: ThemeFonts.r18),
          ),
          BoxCard(boxContent: _VerificationState()),
        ],
      ),
    );
  }
}

class _VerificationState extends StatelessWidget {
  const _VerificationState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 1, top: 1),
      ),
      Row(
        children: const [
          Text(
            '75%',
            style: ThemeFonts.r25,
          ),
          SizedBox(width: 120),
          Text('7 of 10 completed', style: ThemeFonts.r12),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const LinearProgressIndicator(
            value: 0.7,
            minHeight: 10,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 25, bottom: 23),
        child: ContentLine(),
      ),
      Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 20),

                child: Icon(Icons.person, color: ThemeColors.scaffold),
              ),
              const Text('Personal Information', style: ThemeFonts.rr14),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 40),
            child: Text(
                'You spent \$2,732 on dining out this month. Let’s try to make it lower'),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Tell me more',
            style: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 5, bottom: 10, left: 40),
        child: ContentLine(),
      ),
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 20, bottom: 5),
            child: Icon(Icons.recent_actors_outlined, color: ThemeColors.scaffold),
          ),
          //chrome_reader_mode
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 24),
            child: const Text('Verification', style: ThemeFonts.rr14),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 5, bottom: 10, left: 40),
        child: ContentLine(),
      ),
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.mail, color: ThemeColors.scaffold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 19, bottom: 20),
            child: const Text('Confirm email', style: ThemeFonts.rr14),
          ),
        ],
      ),
    ]);
  }
}
