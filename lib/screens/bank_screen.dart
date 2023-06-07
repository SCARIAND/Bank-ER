import 'package:flutter/material.dart';
import 'package:todo/screens/home_screen.dart';
import '../constants/theme_constants.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.scaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/board.png',
                    height: 331,
                  ),
                ),
                const Text('Bank EC', style: ThemeFonts.r70),
                const Text('Bank, Finance Kit', style: ThemeFonts.rrr20),
                const SizedBox(height: 18),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 22,
                  ),
                  decoration: BoxDecoration(
                    color: ThemeColors.textBar,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Our system is helping you to nachieve a better goal',
                        style: ThemeFonts.rr22,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'We will guide you to where nyou wanted it too',
                        style: ThemeFonts.rs20,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: ThemeColors.scaffold,
                            foregroundColor: ThemeColors.textBar,
                            padding: const EdgeInsets.all(10.0),
                          ),
                          child:
                              const Text('Continue', style: ThemeFonts.rrr20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
