import 'package:flutter/material.dart';
import 'package:todo/section/contacts.dart';

import '../constants/theme_constants.dart';
import '../state/contats_state.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final _contactsNotifier = ContactsNotifier();
  @override
  Widget build(BuildContext context) {
    return ContactsState(
      notifier: _contactsNotifier,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All contacts', style: ThemeFonts.r18),
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 22, right: 18),
                        child: Icon(Icons.search),
                      ),
                      hintText: 'search name or number..',
                      hintStyle: ThemeFonts.rrs14,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.all(14),
                    ),
                  ),
                  Builder(builder: (context) {
                    final state = ContactsState.of(context);
                    return ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,

                      padding: const EdgeInsets.all(10),

                      itemCount: state.contacts.length,
                      itemBuilder: (context, index) =>
                          ContactsUser(contact: state.contacts[index]),
                      separatorBuilder: (context, index) =>
                          Divider(height: 20, color: ThemeColors.primary,  thickness: 2,),

                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
