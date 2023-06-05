import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/theme_constants.dart';

class TransferUser extends StatelessWidget {


  const TransferUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Transfer',
            style: ThemeFonts.rrr20

          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeServiceItem(
                icon: ('assets/images/user.svg'),
                title: 'Mobile',
                onTap: () {},
              ),
              HomeServiceItem(
                icon: ('assets/images/bank.svg'),
                title: 'Bank',
                onTap: () {},
              ),
              HomeServiceItem(
                icon: ('assets/images/wifi.svg'),
                title: 'Online',
                onTap: () {},
              ),
              HomeServiceItem(
                icon: ('assets/images/qr-code.svg'),
                title: 'QR code',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class HomeServiceItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;

  const HomeServiceItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 62,
          margin: const EdgeInsets.only(bottom: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ThemeColors.scaffold,
          ),
          alignment: Alignment.center,
          child: SvgPicture.asset(icon),

            ),


        Text(
          title,
          style: ThemeFonts.rr12),

      ],
    );
  }
}
