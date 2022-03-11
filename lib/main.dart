import 'package:bongjeba/main_page.dart';
import 'package:bongjeba/misc/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Title",
      home: MainPage(),
    );
  }
}

/**MaterialApp(
      title: "Bong Jeba",
      
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MainPage(), */