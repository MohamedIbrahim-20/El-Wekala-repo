// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/dbprovider.dart';
import 'package:untitled/pages/product%20page.dart';
import 'package:untitled/utls/Database.dart';
import 'package:untitled/widgets/appicon.dart';
import 'package:untitled/widgets/big_text.dart';
import 'package:untitled/widgets/s_text.dart';

class ProductsList extends StatelessWidget {
  String s,s2;
  ProductsList({Key? key,required this.s,required this.s2}) : super(key: key);
  // Text("Technology",style: TextStyle(color: Colors.black,fontSize: 35))
  var con;

  @override
  Widget build(BuildContext context) {
    Provider.of<DbProvider>(context).getdata(s);

    con = context;

    // print("length is :${Provider.of<DbProvider>(context,listen: false).list.length}");

    return Scaffold(
      backgroundColor: const Color(0xF3FFFEFE),
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
                      child:   Text(s2,style: TextStyle(color: Colors.black,fontSize: 35))
                      ,
                    ),
                  ],
                ),

          SingleChildScrollView(child: Container(
                  height: 680,
                  child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      itemCount:Provider.of<DbProvider>(context).list.length
                      ,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(index: index,)));
                          },
                          child: Container(child: Container(
                            margin: EdgeInsets.only(left: 20,right: 20,bottom: 8),
                            child: Row(
                              children: [
                                Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      image: DecorationImage(image: NetworkImage(Provider.of<DbProvider>(context).list[index]['img']))
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
                                          BText(text:Provider.of<DbProvider>(context).list[index]['title']),
                                          SizedBox(height: 5,),
                                          SText(text:Provider.of<DbProvider>(context).list[index]['company']),
                                          SizedBox(height: 5,),
                                          Row(
                                            children: [
                                              SText(text: "EGP"),
                                              BText(text:Provider.of<DbProvider>(context).list[index]['price'].toString())
                                            ],
                                          )
                                        ],
                                      ),),
                                  ),
                                )
                              ],
                            ),
                          )),
                        );
                      }
                  ),
                ),),
              ]
          ),
          


    );
  }

}
