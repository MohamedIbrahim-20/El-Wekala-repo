// ignore_for_file: file_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/productlist.dart';
import 'package:untitled/widgets/big_text.dart';

class Scrolling extends StatefulWidget {
  Scrolling({Key? key}) : super(key: key);
  @override
  _ScrollingState createState() => _ScrollingState();
}
class _ScrollingState extends State<Scrolling> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 595,
        child : SingleChildScrollView(
          // physics: AlwaysScrollableScrollPhysics(),
          child: Column(
              children:[
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsList(s: '''"Technology"''',s2: "Technology")));
                },
                  child: SizedBox(
                    height: 300,

                    child:Stack(
                      children: [
                        Container(
                          height: 220,
                          margin : EdgeInsets.only(left:10, right:10),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(30),
                            image : DecorationImage(
                              fit : BoxFit.fill,
                              image: AssetImage("assets/tech.jpg"),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,left: 20,right: 20,
                          child: Container(
                            height:80,
                            margin: EdgeInsets.only(left:30, right:30, bottom:15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  color : Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(0,5),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-5,0),

                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top:10, left:15, right:15),
                              child: Center(
                                child: BText(text:'Technology',size: 24,),
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsList(s: '''"Clothing"''',s2: "Clothes")));
                },
                  child: SizedBox(
                    height: 300,

                    child:Stack(
                      children: [
                        Container(
                          height: 220,
                          margin : EdgeInsets.only(left:10, right:10),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(30),
                            image : DecorationImage(
                              fit : BoxFit.fill,
                              image: AssetImage("assets/clothes.jpg"),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,left: 20,right: 20,
                          child: Container(
                            height:80,
                            margin: EdgeInsets.only(left:30, right:30, bottom:15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  color : Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(0,5),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-5,0),

                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top:10, left:15, right:15),
                              child: Center(
                                child: BText(text:'Clothes',size: 24,),
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProductsList(s: '''"watches"''',s2: "Watches")));
                },
                  child: SizedBox(
                    height: 300,

                    child:Stack(
                      children: [
                        Container(
                          height: 220,
                          margin : EdgeInsets.only(left:10, right:10),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(30),
                            image : DecorationImage(
                              fit : BoxFit.fill,
                              image: AssetImage("assets/watches.jpg"),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,left: 20,right: 20,
                          child: Container(
                            height:80,
                            margin: EdgeInsets.only(left:30, right:30, bottom:15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  color : Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(0,5),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-5,0),

                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top:10, left:15, right:15),
                              child: Center(
                                child: BText(text:'Watches',size: 24,),
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsList(s: '''"Kitchenware"''',s2: "Kitchen")));
                },
                  child: SizedBox(
                    height: 300,

                    child:Stack(
                      children: [
                        Container(
                          height: 220,
                          margin : EdgeInsets.only(left:10, right:10),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(30),
                            image : DecorationImage(
                              fit : BoxFit.fill,
                              image: AssetImage("assets/kitchen.png"),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,left: 20,right: 20,
                          child: Container(
                            height:80,
                            margin: EdgeInsets.only(left:30, right:30, bottom:15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  color : Colors.grey,
                                  blurRadius: 5.0,
                                  offset: Offset(0,5),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-5,0),

                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(top:10, left:15, right:15),
                              child: Center(
                                child: BText(text:'Kitchen',size: 24,),
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                       ],
          ),
        ),
    );
  }
}

