import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/section/contacts.dart';

import '../constants/theme_constants.dart';
import '../models/contats_data.dart';
import '../state/contats_cubit.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsCubit, List<ContactsData>>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('All contacts', style: ThemeFonts.r18),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 22, right: 18),
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
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(10),
                      itemCount: state.length,
                      itemBuilder: (context, index) =>
                          ContactsUser(contact: state[index]),
                      separatorBuilder: (context, index) => const Divider(
                        height: 20,
                        color: ThemeColors.primary,
                        thickness: 2,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
