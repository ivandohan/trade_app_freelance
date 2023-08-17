import 'package:flutter/material.dart';
import 'package:trade_app/screens/auction_screen.dart';
import 'package:trade_app/screens/debt_screen.dart';
import 'package:trade_app/screens/home_screen.dart';
import 'package:trade_app/widgets/home_widgets/home_appbar_widget.dart';
import 'package:trade_app/widgets/home_widgets/home_bottom_bar_widget.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  int _currentIndex = 0;

  List mainScreens = [
    HomeScreen(),
    AuctionScreen(),
    DebtScreen(),
    Container(),
  ];

  setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBarWidget(),
      ),
      body: mainScreens[_currentIndex],
      bottomNavigationBar: HomeBottomBarWidget(
        currentIndex: _currentIndex,
        setCurrentIndex: setCurrentIndex,
      ),
    );
  }
}
