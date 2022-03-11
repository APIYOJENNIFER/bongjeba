import 'package:bongjeba/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  double radius;
  final Color borderColor;
  String? text;
  FontWeight fontWeight;
  AppButton(
      {Key? key,
      this.text = "hi",
      required this.size,
      required this.radius,
      required this.color,
      required this.backgroundColor,
      required this.borderColor,
      this.fontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius)),
      child: Center(
          child: AppText(
        text: text!,
        color: color,
        // size: size,
        fontWeight: fontWeight,
      )),
    );
  }
}
