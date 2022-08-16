import 'package:flutter/cupertino.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backColor;
  final Color IconColor;
  final double size;
  AppIcon({Key? key, required this.icon,
    this.backColor = const Color(0x8fececec),
    this.IconColor = const Color(0xff000000), this.size = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backColor
      ),
      child: Icon(
        icon,
        color: IconColor,
        size: 16,
      )
    );
  }
}
