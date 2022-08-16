import 'package:flutter/material.dart';
import 'package:untitled/widgets/s_text.dart';
import 'big_text.dart';

class ProductCol extends StatelessWidget {
  final String MainText,SmallText,Price;
  final double size;
  ProductCol({Key? key, required this.MainText, required this.SmallText,required this.Price,this.size = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BText(l:50,overflow: TextOverflow.visible,text: MainText,size: size,),
        SizedBox(height: 5,),
        SText(text: SmallText),
        SizedBox(height: 5,),
        Row(
          children: [
            SText(text: "EGP"),
            BText(text: Price)
          ],
        )
      ],
    );
  }
}
