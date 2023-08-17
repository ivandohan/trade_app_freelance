import 'package:flutter/material.dart';
import 'package:trade_app/models/auction_category_model.dart';

class MainSearchCategoryButtonWidget extends StatelessWidget {
  final bool selected;
  final AuctionCategory auctionCategory;

  const MainSearchCategoryButtonWidget({
    super.key,
    required this.auctionCategory,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 13),
      width: 100,
      height: 40,
      child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(
                        color: Color(0xFF40F8FF)))),
            backgroundColor:
            MaterialStateProperty.all(Color(0xFF279EFF)),
          ),
          onPressed: () {},
          child: Text(
            auctionCategory.category,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Colors.white,
              fontSize: 15,
            ),
          )),
    );
  }
}