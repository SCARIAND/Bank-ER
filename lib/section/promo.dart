import 'package:flutter/material.dart';


import '../constants/color_dot.dart';
import '../constants/theme_constants.dart';
import 'box_cards.dart';

class Promo extends StatelessWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 37, right: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text('News and promo', style: ThemeFonts.r18),
          ),
          BoxCardNew(boxContent: _PromoState()),
        ],
      ),
    );
  }
}

class _PromoState extends StatelessWidget {
  const _PromoState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

      Container(

          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Image.asset('assets/images/free.png')),
      Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
               const Text('Personal Information', style: ThemeFonts.rr14),
              ],
            ),
             SizedBox(height: 14),
             Text(
                  'You spent \$2,732 on dining out this month. Let’s try to make it lower'),

            TextButton(
              onPressed: () {},
              child: const Text(
                'Tell me more',
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),


    ]);
  }
}
