import 'package:flutter/material.dart';
import 'package:trade_app/screens/auction_item_detail_screen.dart';
import 'package:trade_app/screens/auction_item_set_bid.dart';
import 'package:trade_app/screens/initial_screen.dart';
import 'package:trade_app/screens/main_search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trade App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(),
        MainSearchScreen.routeName: (context) => MainSearchScreen(),
        AuctionItemDetailScreen.routeName: (context) =>
            AuctionItemDetailScreen(),
        SetBid.routeName: (context) => SetBid(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => InitialScreen(),
            settings: settings,
          );
        }

        if (settings.name == MainSearchScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) => MainSearchScreen(),
            settings: settings,
          );
        }

        if (settings.name == AuctionItemDetailScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) => AuctionItemDetailScreen(),
            settings: settings,
          );
        }
        if (settings.name == SetBid.routeName) {
          return MaterialPageRoute(
              builder: (context) => SetBid(), settings: settings);
        }
      },
    );
  }
}
