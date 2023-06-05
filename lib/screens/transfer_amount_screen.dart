import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/constants/theme_constants.dart';
import 'package:todo/screens/card_details_screen.dart';
import 'package:todo/screens/home_screen.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController = TextEditingController(
    text: '100',
  );

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            text.replaceAll('', ''),
          ),
        ),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);

        if (amountController.text == '') {
          amountController.text = '';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: Column(
        children: [
          AppBar(
            centerTitle: true,
            elevation: 0,
            toolbarHeight: 32,
            title: const Center(
                child: Text('Transfer Amount   ', style: ThemeFonts.rr20)),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: ThemeColors.text,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            backgroundColor: ThemeColors.container,
          ),
          Stack(
            children: [
              Container(
                height: 420,
                color: ThemeColors.container,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 98, bottom: 230),
                child: Align(
                  child: SizedBox(
                    width: 150,
                    height: 88,
                    child: TextFormField(
                      controller: amountController,
                      style: ThemeFonts.r40,
                      enabled: false,
                      decoration: const InputDecoration(
                        prefix: Text('\$', style: ThemeFonts.r40),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: ThemeColors.scaffold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 105,
                color: ThemeColors.container,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37, right: 37, bottom: 51),
                child: CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CardDetailsScreen()));
                  },
                ),
              ),
            ],
          ),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              CustomInputButton(
                title: '1',
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomInputButton(
                title: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomInputButton(
                title: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomInputButton(
                title: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomInputButton(
                title: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomInputButton(
                title: '6',
                onTap: () {
                  addAmount('6');
                },
              ),
              CustomInputButton(
                title: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomInputButton(
                title: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomInputButton(
                title: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: CustomInputButton(
                  title: '0',
                  onTap: () {
                    addAmount('0');
                  },
                ),
              ),
              GestureDetector(
                onTap: deleteAmount,
                child: Container(
                  width: 130,
                  height: 50,
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class CustomInputButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const CustomInputButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 45,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: ThemeColors.textBar,
        ),
        child: Center(
          child: Text(
            title,
            style: ThemeFonts.rr20,
          ),
        ),
      ),
    );
  }
}

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 60,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: ThemeColors.scaffold,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(title, style: ThemeFonts.rr17),
      ),
    );
  }
}
