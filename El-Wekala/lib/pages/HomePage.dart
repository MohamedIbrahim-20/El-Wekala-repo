// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/big_text.dart';
import 'Scrolling.dart';


class HomePage extends StatelessWidget {

    HomePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xF3FFFEFE),
      body: Column(
        children: [
          Container(
             child:Container (
               margin: EdgeInsets.only(top:70,bottom: 15),
               padding: EdgeInsets.only(left:20, right:20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         children:[
                         BText(text:'Categories', color: Colors.blue, size: 30,),
                           // Row(
                           //   children: [
                           //     SText(text:'Shoes & Sneakers'),
                           //     Icon(Icons.arrow_drop_down_outlined),
                           //   ],
                           // ),
                         ],
                       ),
                       Center(
                         child: Container(
                           width: 45,
                           height: 45,
                           child: Icon(Icons.search, color: Colors.white ),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                               color: Colors.blue ,
                           ),

                         ),
                       ),
                     ],
                   ),
             ),
          ),
          Scrolling(),
        ],
      ),
    );



  }


}

