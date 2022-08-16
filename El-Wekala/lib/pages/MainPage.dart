// ignore: file_names
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'HomePage.dart';
import 'Profile.dart';
import 'ShoppingBag.dart';
// import 'ProductsPage.dart';
class MainPage extends StatefulWidget
{

 _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>  {
final Pages=
[HomePage(),ShoppingBag(),Profile()];//<<<< put your wiggets of scafold here
int currentIndex=0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: IndexedStack(
            children: Pages,//here is the list of of pages variable
            index: currentIndex
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index)=>setState(() =>currentIndex=index),
          selectedItemColor:Colors.black87 ,
          backgroundColor: Colors.grey.shade50,
          currentIndex:currentIndex,
          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              activeIcon:Padding(padding: EdgeInsets.only(top: 0),
                  child: Icon(Icons.home_outlined,color: Colors.blue)) ,
              icon: Icon(Icons.home_outlined,color: Colors.black),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(padding: EdgeInsets.only(top: 0),
              child: Icon(Icons.shopping_cart_outlined,color: Colors.blue)),
              icon: Icon(Icons.shopping_cart_outlined,color: Colors.black),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon:Padding(padding: EdgeInsets.only(top: 0),
                  child:Icon(Icons.account_circle_outlined,color: Colors.blue,)) ,
              icon: Icon(Icons.account_circle_outlined,color: Colors.black,),
              label: '',
              backgroundColor: Colors.black87,
            ),
          ],

        )
    );
  }


  }
