import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/theme_constants.dart';
import '../state/done_cubut.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = context.watch<DoneCubit>().state;

    return Scaffold(
      backgroundColor: ThemeColors.scaffold,
      body: Column(
        children: [
          Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Text('My Receipt', style: ThemeFonts.rrr20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0, left: 71, right: 90),
                child: Container(
                    width: 250,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('assets/images/shapes.png'),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 28, right: 28),
            child: Stack(
              children: [
                Container(
                    height: 527,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ThemeColors.container,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 22.0, bottom: 16, left: 24, right: 24),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 74,
                          height: 74,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ThemeColors.burger,
                          ),
                          child: Container(
                              width: 30,
                              height: 27,
                              margin: const EdgeInsets.all(22),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/burger.png'),
                                ),
                              )),
                        ),
                        const Text('Transfer done', style: ThemeFonts.rr20),
                        const SizedBox(height: 14),
                        const ContentLine(),
                      ],
                    ),
                  ),
                ),
                const ContentLine(),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 24, top: 150),
                  child: SizedBox(
                    height: 99,
                    child: Row(
                      children: [
                        ...name.names.map(
                          (contact) => Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(contact.avatar),
                                ),
                              )),
                        ),
                        ...name.names.map(
                          (contact) => Padding(
                            padding: const EdgeInsets.only(left: 18, top: 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Recipient', style: ThemeFonts.rs12),
                                Text(contact.name, style: ThemeFonts.rr16),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 235),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Reference number', style: ThemeFonts.rs12),
                            Text('#D79004321786', style: ThemeFonts.rr16),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 310),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Amount sent', style: ThemeFonts.rs12),
                            Text('\$ 100.00', style: ThemeFonts.rr16),

                            // Text('\$46.09', style: ThemeFonts.rr16),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75, top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Transfer fee', style: ThemeFonts.rs12),
                            Text('\$0.00', style: ThemeFonts.rr16),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 47, right: 47, top: 435),
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: ThemeColors.scaffold,
                          foregroundColor: ThemeColors.textBar,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10.0),
                        ),
                        child: const Text('Share', style: ThemeFonts.rr17),
                      ),
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: SizedBox(
              height: 48,
              width: 247,
              child: Text('It will take less than 24 hours to process it',
                  style: ThemeFonts.r17, textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }
}
