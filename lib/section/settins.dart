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
          Text('Settings', style: ThemeFonts.rr20),
        Column(children: [
          Container(
            height: 75,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Set card limit', style: ThemeFonts.rr16),
                    Text('You set budget for 3 categories', style: ThemeFonts.rr15),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Switch(
                value: true,
                activeColor: ThemeColors.scaffold,

                onChanged: (value) {

                },
              ),
              SizedBox(width: 25),
            ]),
          ),

          SizedBox(height: 20),
          ContentLine(),
        ]),

          Container(
            height: 75,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Set card limit', style: ThemeFonts.rr16),
                    Text('You set budget for 3 categories', style: ThemeFonts.rr15),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Switch(
                value: false,
                onChanged: (value) {

                },
              ),
              SizedBox(width: 25),
            ]),
          ),


        ],
      ),
    );
  }
}
