// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/dbprovider.dart';
import 'package:untitled/pages/product%20page.dart';
import 'package:untitled/utls/cartdatabase.dart';

import 'package:untitled/widgets/big_text.dart';
import 'package:untitled/widgets/s_text.dart';

class YourOrders extends StatelessWidget {
  // String s,s2;
  // int i;

  YourOrders({Key? key}) : super(key: key);
  // Text("Technology",style: TextStyle(color: Colors.black,fontSize: 35))
  var con;

  @override
  Widget build(BuildContext context) {

    // print(Provider.of<DbProvider>(context,listen: false).uid);
    Provider.of<DbProvider>(context).getdataorders(Provider.of<DbProvider>(context).uid);
    // Provider.of<DbProvider>(context).getFullPrice(Provider.of<DbProvider>(context).uid);
    // Provider.of<DbProvider>(context).s();
    // print(Provider.of<DbProvider>(context).i);
    // con = context;
    // List<Map<String,dynamic>> l = await CartDatabase.getDataByUid;
    // print(l);
    // print("length is :${Provider.of<DbProvider>(context,listen: false).list.length}");

    return Scaffold(

      body:

      Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.only(left: 100,right: 100,top: 20,bottom: 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    color: Colors.white,),
                  child:   Text("Your Orders",style: TextStyle(color: Colors.black,fontSize: 35))
                  ,
                ),
              ],
            ),

            SingleChildScrollView(child: Container(
              height: 700,
              child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemCount:Provider.of<DbProvider>(context).list3.length
                  ,
                  itemBuilder: (context,index){
                    return Container(child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20,bottom: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(image: NetworkImage(Provider.of<DbProvider>(context).list3[index]['img']))
                                // image: DecorationImage(image: NetworkImage('''https://m.media-amazon.com/images/I/71c5W9NxN5L._AC_SL1500_.jpg'''))
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),topRight: Radius.circular(20)
                                    ),
                                    color: Colors.white
                                ),
                                child: Padding(padding: EdgeInsets.only(left: 10,right: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BText(text:Provider.of<DbProvider>(context).list3[index]['title']),
                                      SizedBox(height: 5,),
                                      SText(text:Provider.of<DbProvider>(context).list3[index]['company']),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          SText(text: "EGP"),
                                          BText(text:Provider.of<DbProvider>(context).list3[index]['price'].toString()),
                                          SizedBox(width: 8,),
                                          SText(text: "Amount: "),
                                          BText(text:Provider.of<DbProvider>(context).list3[index]['amount'].toString()),
                                        ],
                                      ),
                                      // Row(
                                      //   children: [
                                      //     SText(text: "Amount"),
                                      //     BText(text:Provider.of<DbProvider>(context).list2[index]['amount'].toString())
                                      //   ],
                                      // )
                                    ],
                                  ),),
                              ),
                            )
                          ],
                        ),
                      ));

                  }
              ),
            ),),
          ]
      ),
      // bottomNavigationBar: Container(
      //   height: 126,
      //   padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
      //   decoration: BoxDecoration(
      //       color: Color(0xEFF1F1F1),
      //
      //       borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
      //   ),
      //   child: Column(
      //     children: [
      //       Row(children: [
      //         BText(text: "Full Price: ${Provider.of<DbProvider>(context).i}"),
      //         // SizedBox(width: 10,),
      //         // BText(text: "Full Price: ")
      //       ],),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           // Container(
      //           //   padding: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
      //           //   decoration: BoxDecoration(
      //           //       color: Colors.white,
      //           //       borderRadius: BorderRadius.circular(20)
      //           //   ),
      //           //
      //           // ),
      //           Expanded(
      //             child: RaisedButton(onPressed: () async {
      //               // if(cntr > 0){
      //               //   await CartDatabase.insertDatabase(
      //               //     uid: Provider.of<DbProvider>(context,listen: false).uid,
      //               //     img: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['img'],
      //               //     title: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['title'],
      //               //     amount: cntr,
      //               //     category: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['category'],
      //               //     company: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['company'],
      //               //     detail1: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['detail1'],
      //               //     detail2: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['detail2'],
      //               //     price: Provider
      //               //         .of<DbProvider>(context, listen: false)
      //               //         .list[widget.index]['price'],
      //               //
      //               //   );
      //               //   Provider.of<DbProvider>(context,listen: false).getdatacart(Provider.of<DbProvider>(context,listen: false).uid);
      //               // }
      //             },
      //               child: BText(text: "Checkout",color: Colors.white,),
      //               padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(20)
      //               ),
      //               color: Colors.black,
      //
      //             ),
      //           ),
      //
      //         ],
      //       ),
      //     ],
      //   ),
      // ),



    );
  }

}
