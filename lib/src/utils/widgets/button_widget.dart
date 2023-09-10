
import 'package:bd_result/src/constants/colors.dart';
import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final Color? bordercolor;
  final Color? textcolor;
  final double? width;
  final Icon? icon;
  final double? fontSize;
  final double? radius;
  final FontWeight? fontWeight;
  const Buttonwidget(
      {super.key,
      this.color,
      this.width,
      this.textcolor,
      this.icon,
      this.text,
      this.bordercolor,
      this.fontSize=24,
      this.radius=10,
      this.fontWeight
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius!),
          border: Border.all(
              color: bordercolor ?? Appcolor.primaryColor, width: 2)),
      child: Center(
          child: text == null
              ? icon
              : Text(
                  text!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: textcolor, fontSize: fontSize,fontWeight:fontWeight ),
                )),
    );
  }
}