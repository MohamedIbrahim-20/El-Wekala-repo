import 'package:flutter/material.dart';

class BText extends StatelessWidget {
  String text;
  final Color? color;
  TextOverflow overflow;
  double size;
  int l;

  BText({Key? key,required this.text,
    this.color = const Color(0xff000000),this.size = 20,
    this.overflow= TextOverflow.ellipsis,
    this.l = 1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: l,
      overflow: overflow,
      style: TextStyle(fontFamily: 'Roboto',
          color: color,fontWeight: FontWeight.w400,fontSize: size),

    );
  }
}