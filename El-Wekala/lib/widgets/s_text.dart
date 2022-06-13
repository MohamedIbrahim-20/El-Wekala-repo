import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SText extends StatelessWidget {
  String text;
  final Color? color;
  double size;
  double height;
  SText({Key? key,required this.text,
  this.color = const Color(0x8a000000),this.size = 12,
    this.height = 1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: 'Roboto',
          color: color,
      height: height,fontSize: size),

    );
  }
}
