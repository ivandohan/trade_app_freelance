import 'package:flutter/material.dart';

class AuctionItemBidderNameWidget extends StatelessWidget {
  const AuctionItemBidderNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.red,
      child: Row(
        children: const [
          Text("Hellop"),
        ],
      ),
    );
  }
}