import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/models/contats_data.dart';

import '../constants/theme_constants.dart';

class ContactsUser extends StatelessWidget {
  final ContactsData contact;
  const ContactsUser({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 99,
        child: Row(
          children: [
            Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(contact.avatar),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 32),
              child: Column(
                children: [
                  Text(contact.name, style: ThemeFonts.rr16),
                  Text(contact.phone, style: ThemeFonts.rs12),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: ThemeColors.primary,
                foregroundColor: ThemeColors.textBar,
                padding: const EdgeInsets.all(10.0),
              ),
              child: Text(
                'invite',
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                ),
              ),
            )
          ],
        ));
  }
}
