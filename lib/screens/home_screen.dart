import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:todo/constants/theme_constants.dart';
import 'package:todo/section/activity.dart';
import 'package:todo/section/promo.dart';
import 'package:todo/section/spent.dart';
import 'package:todo/section/verification.dart';
import '../models/balance_data.dart';
import '../state/balance_cubit.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: () async {
          await context.read<BalanceCubit>();
          _refreshController.refreshCompleted();
        },
        child: const CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: ThemeColors.scaffold,
              expandedHeight: 125,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                title: InfoUser(),
              ),
            ),
            SliverToBoxAdapter(child: Spent()),
            SliverToBoxAdapter(child: Activity()),
            SliverToBoxAdapter(child: Verification()),
            SliverToBoxAdapter(child: Promo()),
          ],
        ),
      ),
    );
  }
}

class InfoUser extends StatelessWidget {
  const InfoUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BalanceCubit, BalanceData?>(
      builder: (context, state) {
        return Stack(
          children: [
            Text('\$${state?.availableBalance}', style: ThemeFonts.r35),
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
      },
    );
  }
}
