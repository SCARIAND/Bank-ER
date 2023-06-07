import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/screens/receipt_screen.dart';
import '../constants/theme_constants.dart';
import '../models/contats_data.dart';
import '../state/contats_cubit.dart';
import '../state/done_cubut.dart';

class RecentUser extends StatelessWidget {
  const RecentUser({Key? key}) : super(key: key);

  void _addToDone(BuildContext context, ContactsData contacts) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const ReceiptScreen()));
    context.read<DoneCubit>().addContacts(contacts);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsCubit()..load(),
      child: Container(
        color: ThemeColors.container,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Recent', style: ThemeFonts.r18),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 200,
                  child: BlocBuilder<ContactsCubit, List<ContactsData>>(
                    builder: (context, contacts) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(10),
                        itemCount: contacts.length,
                        itemBuilder: (context, index) => ContactsRecent(
                          contact: contacts[index],
                          onAdd: () => _addToDone(context, contacts[index]),
                        ),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactsRecent extends StatelessWidget {
  final ContactsData contact;
  final VoidCallback onAdd;

  const ContactsRecent({
    super.key,
    required this.contact,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAdd,
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
