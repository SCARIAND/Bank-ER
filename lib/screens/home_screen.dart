import 'package:flutter/material.dart';

import 'package:todo/constants/theme_constants.dart';

import 'package:todo/section/activity.dart';

import 'package:todo/section/promo.dart';
import 'package:todo/section/spent.dart';
import 'package:todo/section/verification.dart';

import '../models/balance_data.dart';
import '../state/balance_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _refreshController = RefreshController();
  final _balanceNotifier = BalanceNotifier();

  @override
  Widget build(BuildContext context) {
    return BalanceState(
      notifier: _balanceNotifier,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            Builder(builder: (context) {
              final state = BalanceState.of(context);
              return SliverAppBar(
                pinned: true,
                backgroundColor: ThemeColors.scaffold,
                expandedHeight: 125,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1,
                  title: InfoUser(balanceData: state.balance),
                ),
              );
            }),
            const SliverToBoxAdapter(child: Spent()),
            const SliverToBoxAdapter(child: Activity()),
            const SliverToBoxAdapter(child: Verification()),
            const SliverToBoxAdapter(child: Promo()),
          ],
        ),
      ),
    );
  }
}

class InfoUser extends StatelessWidget {
  final BalanceData? balanceData;

  const InfoUser({
    super.key,
    required this.balanceData,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text('\$${balanceData?.availableBalance}', style: ThemeFonts.r35),
        const Padding(
          padding: EdgeInsets.only(top: 50),
          child: Text('Available balance', style: ThemeFonts.r15),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 260, top: 10),
          child: Container(
            width: 47,
            height: 47,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/avat.png'),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ThemeColors.container,
                ),
                child: const Center(
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
