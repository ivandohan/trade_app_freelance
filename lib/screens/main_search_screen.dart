import 'package:flutter/material.dart';
import 'package:trade_app/constants/category_dummy.dart';
import 'package:trade_app/widgets/main_search_widgets/main_search_card_item_widget.dart';
import 'package:trade_app/widgets/main_search_widgets/main_search_category_button_widget.dart';
import 'package:trade_app/widgets/main_search_widgets/main_search_appbar_widget.dart';
import 'package:trade_app/widgets/main_search_widgets/main_search_input_widget.dart';

class MainSearchScreen extends StatefulWidget {
  const MainSearchScreen({Key? key}) : super(key: key);

  static final routeName = "/main-search-screen";

  @override
  State<MainSearchScreen> createState() => _MainSearchScreenState();
}

class _MainSearchScreenState extends State<MainSearchScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MainSearchAppBarWidget(),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 248, 254),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainSearchInputWidget(searchController: _searchController),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Kategori Pencarian",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...categoryDummy.map((e) {
                          return MainSearchCategoryButtonWidget(
                            selected: false,
                            auctionCategory: e,
                          );
                        }).toList(),
                      ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Sedang Ramai",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      MainSearchCardItemWidget(),
                      MainSearchCardItemWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
