import 'package:flutter/material.dart';

class RecordStockPage extends StatefulWidget {
  const RecordStockPage({ Key? key }) : super(key: key);

  @override
  State<RecordStockPage> createState() => _RecordStockPageState();
}

class _RecordStockPageState extends State<RecordStockPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: const Text("Record Stock")),
    );
  }
}