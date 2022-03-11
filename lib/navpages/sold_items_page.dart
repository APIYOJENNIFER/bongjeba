import 'package:flutter/material.dart';

class SoldItemsPage extends StatefulWidget {
  const SoldItemsPage({ Key? key }) : super(key: key);

  @override
  State<SoldItemsPage> createState() => _SoldItemsPageState();
}

class _SoldItemsPageState extends State<SoldItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Center(child: const Text("Sold Items")),
      
    );
  }
}