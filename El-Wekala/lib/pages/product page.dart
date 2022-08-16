import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pages/ShoppingBag.dart';
import 'package:untitled/utls/cartdatabase.dart';
import 'package:untitled/widgets/appicon.dart';
import 'package:untitled/widgets/big_text.dart';
import 'package:untitled/widgets/productCol.dart';
import 'package:untitled/widgets/s_text.dart';

import '../dbprovider.dart';

class ProductDetails extends StatefulWidget {
final int index;
  ProductDetails({Key? key,required this.index}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int cntr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 35),
        child: Stack(
          children: [

            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(Provider.of<DbProvider>(context).list[widget.index]['img'])
                  )),
            )),
            Positioned(
              top: 5,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){Navigator.pop(context);},child: AppIcon(icon: Icons.arrow_back_ios)),
                    GestureDetector(onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShoppingBag(

                          ))
                      );
                    },child: AppIcon(icon: Icons.shopping_cart_outlined))
                  ],
            )),
            Positioned(
                top: 330,
                left: 0,
                right: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(

                    padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ProductCol(MainText: Provider.of<DbProvider>(context).list[widget.index]['title'],
                            SmallText: Provider.of<DbProvider>(context).list[widget.index]['company'] ,
                            Price:(Provider.of<DbProvider>(context).list[widget.index]['price']).toString()),
                        SizedBox(height: 15,),
                        BText(text: "Details:"),
                        SizedBox(height: 10,),
                        SText(text: Provider.of<DbProvider>(context).list[widget.index]['detail1']),
                        SizedBox(height: 10,),
                        SText(text: Provider.of<DbProvider>(context).list[widget.index]['detail2']),
                        // SizedBox(height: 10,),
                        // SText(text: " To get set up, connect the portable hard drive to a computer for automatic recognition no software required"),
                      ],
                    ),
            ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
        decoration: BoxDecoration(
          color: Color(0xEFF1F1F1),

          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
            child: Row(
              children: [
                GestureDetector(onTap: (){
                  if(cntr != 0){
                    cntr--;
                  }
                  setState(() {

                  });
                },child: Icon(Icons.remove,color: Color(0xFF756d54),)),
                SizedBox(width: 5,),
                BText(text: cntr.toString()),
                SizedBox(width: 5,),
                GestureDetector(onTap: () {
                  int x = Provider.of<DbProvider>(context,listen: false).list[widget.index]['amount'];
                  if(cntr < x){
                    cntr++;
                  }
                setState(() {

                });
              },child: Icon(Icons.add,color: Color(0xFF756d54),))
              ],
            ),
            ),
                RaisedButton(onPressed: () async {
                  if(cntr > 0){
                    await CartDatabase.insertDatabase(
                        uid: Provider.of<DbProvider>(context,listen: false).uid,
                        img: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['img'],
                        title: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['title'],
                        amount: cntr,
                        category: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['category'],
                        company: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['company'],
                        detail1: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['detail1'],
                        detail2: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['detail2'],
                        price: Provider
                            .of<DbProvider>(context, listen: false)
                            .list[widget.index]['price'],

                  );
                    Provider.of<DbProvider>(context,listen: false).getdatacart(Provider.of<DbProvider>(context,listen: false).uid);
                  }
                },
                  child: BText(text: "Add to cart",color: Colors.white,),
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.black,

                ),

          ],
        ),
      ),
    );
  }
}
