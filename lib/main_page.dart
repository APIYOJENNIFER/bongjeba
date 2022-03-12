import 'package:bongjeba/misc/colors.dart';
import 'package:bongjeba/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'navpages/home_page.dart';
import 'navpages/record_stock_page.dart';
import 'navpages/sold_items_page.dart';
import 'navpages/stock_items_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const RecordStockPage(),
    const StockItemsPage(),
    const SoldItemsPage()
  ];

  List appBarTitle = ["Home", "Record New Stock", "Stock Items", "Sold Items"];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(appBarTitle[currentIndex]),
        backgroundColor: MyColors.primaryColor,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_attributes), label: "Record Stock"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Stock Items"),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), label: "Sold Items")
        ],
      ),
    );
  }
}
