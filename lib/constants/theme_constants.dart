import 'package:flutter/material.dart';

class ThemeColors {
  static const scaffold = Color(0xFF5AA5E2);
  static const scaffoldAP = Color(0xFF75BAF1);
  static const container = Color(0xFFF9F9FB);
  static const textBar = Color(0xDDFFFFFF);
  static const text = Color(0xDD1C1939);
  static const fadedText = Color(0xFFAFAFAF);
  static const primary = Color(0xFFCDD0D4);
  static const burger = Color(0xFFFBD133);
  static const line = Color(0xFF979797);
  // static Color text = Colors.white.withOpacity(.87);
}

class ThemeFonts {
  static const r14 = TextStyle(
    fontSize: 14,
    color: ThemeColors.text,
    height: 1.5,
  );
  static const rs14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: ThemeColors.scaffold,
    height: 1.5,
  );

  static const rr14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );
  static const rrs14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: ThemeColors.fadedText,
    height: 1.5,
  );

  static const rrs15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: ThemeColors.scaffold,
    height: 1.5,
  );

  static const r16 = TextStyle(
    fontSize: 16,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const r12 = TextStyle(
    fontSize: 12,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const rs12 = TextStyle(
    fontSize: 12,
    color: ThemeColors.fadedText,
    height: 1.5,
  );

  static const rr12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: ThemeColors.textBar,
    height: 1.5,
  );
  static const r13 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const r15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: ThemeColors.textBar,
    height: 1.5,
  );
  static const rr15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const rr16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );
  static const r17 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ThemeColors.textBar,
    height: 1.5,
  );
  static const rr17 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: ThemeColors.textBar,
    height: 1.5,
  );

  static const r18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const rr20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );
  static const rrr20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: ThemeColors.textBar,
    height: 1.5,
  );
  static const rr22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const r20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: ThemeColors.textBar,
    height: 1.5,
  );

  static const rr24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const r25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const r35 = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: ThemeColors.textBar,
    height: 1.5,
  );

  static const r40 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: ThemeColors.text,
    height: 1.5,
  );
}

class ContentLine extends StatelessWidget {
  const ContentLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.primary),
      ),
    );
  }
}
