import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_code_structure/config/app_color.dart';
import 'package:flutter_code_structure/my_size/my_size.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  String? title;
  Widget? image;
  Color? btnColor;
  Color? brdColor;
  Color? txtColor;
  double? width = 200;

  MyButton(
      {required this.title,
      this.width,
      this.image,
      this.btnColor,
      this.brdColor,
      this.txtColor,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MySize.size50,
        width: width ?? 200,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: brdColor ??  Colors.transparent),
          color: btnColor ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(MySize.size40),
        ),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: txtColor ?? Theme.of(context).shadowColor,
                  fontWeight: FontWeight.w700),
            ),
            image == null
                ? const SizedBox.shrink()
                : const SizedBox(width: 8),
            image == null
                ? const SizedBox.shrink()
                : image!
          ],
        )),
      ),
    );
  }
}
