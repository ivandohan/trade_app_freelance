import 'package:flutter/material.dart';
import 'package:trade_app/widgets/home_widgets/home_auction_bar_widget.dart';
import 'package:trade_app/widgets/home_widgets/home_debt_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 70,
            ),
            HomeDebtBarWidget(),
            SizedBox(
              height: 20,
            ),
            HomeAuctionBarWidget(),
          ],
        ),
      ),
    );
  }
}
