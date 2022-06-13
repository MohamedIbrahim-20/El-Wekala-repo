import 'package:flutter/material.dart';
// import 'package:untitled/utls/Database.dart';
import 'package:untitled/utls/cartdatabase.dart';

class CartProvider extends ChangeNotifier{


  List<Map<String,dynamic>> list2 = [];
  Future<void> getdata(int uid) async {
    list2 = await CartDatabase.getDataByUid(uid);
    // print(list.length);
    notifyListeners();
  }
}
