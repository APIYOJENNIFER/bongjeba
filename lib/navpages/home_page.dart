import 'package:bongjeba/misc/colors.dart';
import 'package:bongjeba/widgets/app_button.dart';
import 'package:bongjeba/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home")),
      backgroundColor: MyColors.secondaryColor.withOpacity(0.3),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AppText(
                          text: "Starting Bal",
                          fontWeight: FontWeight.w500,
                          size: 16,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppButton(
                          radius: 5,
                          color: Colors.white,
                          backgroundColor: Colors.black,
                          borderColor: Colors.black,
                          size: 150,
                          text: "UGX 0",
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AppText(
                          text: DateTime.now().day.toString() +
                              "/" +
                              DateTime.now().month.toString() +
                              "/" +
                              DateTime.now().year.toString(),
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    AppText(
                      text: "Record Sales",
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                        hintText: "E.g 1",
                      ),
                      maxLines: 1,
                      maxLength: 10,
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
                      maxLength: 15,
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
                      text: "ADD",
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(text: "Blue soap"),
                              AppText(text: "2"),
                              AppText(text: "1/2 bar"),
                              AppText(text: "UGX 3,000"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(text: "Ariel"),
                              AppText(text: "1"),
                              AppText(text: "1 sacket"),
                              AppText(text: "UGX 500"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(text: "Torch"),
                              AppText(text: "1"),
                              AppText(text: "1 piece"),
                              AppText(text: "UGX 1,000"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppButton(
                                size: 150,
                                radius: 0,
                                color: MyColors.secondaryColor,
                                backgroundColor: Colors.white,
                                borderColor: MyColors.secondaryColor,
                                text: "TOTAL",
                                fontWeight: FontWeight.w500,
                              ),
                              AppButton(
                                size: 200,
                                radius: 0,
                                color: Colors.black,
                                backgroundColor: MyColors.secondaryColor,
                                borderColor: MyColors.secondaryColor,
                                text: "UGX 5,600",
                                fontWeight: FontWeight.w700,
                              ),
                            ],
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
