import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(

          boxShadow: kElevationToShadow[3],
          borderRadius: BorderRadius.circular(10),
          color: ThemeColors.container,

      ),
      child: boxContent,
    );
  }
}

class BoxPlCard extends StatelessWidget {
  final Widget boxContent;
  const BoxPlCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(


        borderRadius: BorderRadius.circular(10),
        color: ThemeColors.container,

      ),
      child: boxContent,
    );
  }
}

class BoxCardActivity extends StatelessWidget {
  final Widget boxContent;
  const BoxCardActivity({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(

      padding: const EdgeInsets.all(19),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          color: ThemeColors.container),
      child: boxContent,
    );
  }
}

class BoxCardNew extends StatelessWidget {
  final Widget boxContent;
  const BoxCardNew({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor),
      child: boxContent,
    );
  }
}