import 'package:flutter/material.dart';
import 'package:trade_app/widgets/auction_item_detail_widgets/auction_item_bidder_name_widget.dart';

class AuctionItemListOfBiddersWidget extends StatelessWidget {
  const AuctionItemListOfBiddersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Bidders (4)",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        Container(
          margin: const EdgeInsets.only(top: 0),
          height: 300,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView(
              primary: false,
              shrinkWrap: true,
              children: const [
                AuctionItemBidderNameWidget(id: 1),
                AuctionItemBidderNameWidget(),
                AuctionItemBidderNameWidget(),
                AuctionItemBidderNameWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
