import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import '../section/espenses_user.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.container,
      body: Column(
        children: [
          Stack(
            children: [
              AppBar(
                centerTitle: true,
                elevation: 0,
                toolbarHeight: 62,
                title: Text('Expenses', style: ThemeFonts.rr20),
                backgroundColor: ThemeColors.container,


              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 60),
                child: Container(
                    width: 20,
                    height: 20,
                  child: Icon(Icons.arrow_back_ios_outlined,

                        color: ThemeColors.text),

                    ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 84, right: 84, top: 130),
                child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      image: DecorationImage(
                        image: AssetImage('assets/images/exp.png'),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 235),
                child: Center(
                  child: Text('\$1200', style: ThemeFonts.rr22),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 38, right: 31),
            child: ExpensesUser(),
          ),
        ],

      ),
    );
  }
}

