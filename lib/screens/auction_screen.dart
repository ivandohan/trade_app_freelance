import 'package:flutter/material.dart';
import 'package:trade_app/widgets/auction_widgets/auction_item_card_widget.dart';

class AuctionScreen extends StatelessWidget {
  const AuctionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 254),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          AuctionItemCardWidget(),
          AuctionItemCardWidget(),
          AuctionItemCardWidget(),
          AuctionItemCardWidget(),
        ],
      ),
    );
  }
}