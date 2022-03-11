import 'package:flutter/material.dart';

class StockItemsPage extends StatefulWidget {
  const StockItemsPage({ Key? key }) : super(key: key);

  @override
  State<StockItemsPage> createState() => _StockItemsPageState();
}

class _StockItemsPageState extends State<StockItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: const Text("Stock Items")),
    );
  }
}