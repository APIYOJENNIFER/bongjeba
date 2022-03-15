import 'package:flutter/material.dart';

import '../misc/colors.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text.dart';

class RecordStockPage extends StatefulWidget {
  const RecordStockPage({Key? key}) : super(key: key);

  @override
  State<RecordStockPage> createState() => _RecordStockPageState();
}

class _RecordStockPageState extends State<RecordStockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Item Name",
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.normal,
                  size: 16,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "E.g Blue soap",
                  ),
                  maxLines: 1,
                  maxLength: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Quantity",
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.normal,
                  size: 16,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "E.g 10",
                  ),
                  maxLines: 1,
                  maxLength: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Unit",
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.normal,
                  size: 16,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "E.g 1/2 bar",
                  ),
                  maxLines: 1,
                  maxLength: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Unit Price",
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.normal,
                  size: 16,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "E.g 3,000",
                  ),
                  maxLines: 1,
                  maxLength: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Item Picture",
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.normal,
                  size: 16,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                    image: const DecorationImage(
                      image: AssetImage(
                        "img/food.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  radius: 5,
                  color: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.black,
                  size: double.maxFinite,
                  text: "TAKE ITEM PICTURE",
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  radius: 30,
                  color: Colors.white,
                  backgroundColor: MyColors.primaryColor,
                  borderColor: MyColors.primaryColor,
                  size: double.maxFinite,
                  text: "SAVE",
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
