import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/receipt_screen.dart';

import '../constants/theme_constants.dart';
import '../models/contats_data.dart';
import '../screens/transfer_amount_screen.dart';
import '../state/contats_state.dart';

class RecentUser extends StatefulWidget {
  const RecentUser({Key? key}) : super(key: key);

  @override
  State<RecentUser> createState() => _RecentUserState();
}

class _RecentUserState extends State<RecentUser> {
  final _contactsNotifier = ContactsNotifier();
  @override
  Widget build(BuildContext context) {
    return ContactsState(
        notifier: _contactsNotifier,
        child: Container(
            color: ThemeColors.container,
            child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recent', style: ThemeFonts.r18),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                          height: 200,
                          child: Builder(
                            builder: (context) {
                              final state = ContactsState.of(context);
                              return ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(10),
                                itemCount: state.contacts.length,
                                itemBuilder: (context, index) => ContactsRecent(
                                    contact: state.contacts[index]),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 16),
                              );
                            },
                          ),
                        ),
                      ),
                    ]))));
  }
}

class ContactsRecent extends StatelessWidget {
  final ContactsData contact;
  final VoidCallback? onTap;

  const ContactsRecent({
    super.key,
    required this.contact,
    this.onTap,
  });

  void _navigateDone(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  ReceiptScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateDone(context),
      child: Container(
        width: 142,
        height: 164,
        margin: const EdgeInsets.only(bottom: 5, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ThemeColors.textBar,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 70,
                height: 70,
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(contact.avatar),
                  ),
                )),
            Text(contact.name, style: ThemeFonts.r13),
            Text(contact.phone, style: ThemeFonts.rs12),
          ],
        ),
      ),
    );
  }
}
