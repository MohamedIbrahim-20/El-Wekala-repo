import 'package:flutter/material.dart';
import 'package:untitled/utls/Database.dart';
import 'package:untitled/utls/cartdatabase.dart';
import 'package:untitled/utls/ordersdatabase.dart';
import 'package:untitled/utls/userdatabase.dart';

class DbProvider extends ChangeNotifier{


  int uid = 0;
  List<Map<String,dynamic>> list = [];
  Future<void> getdata(String category) async {
    list = await LocalDatabase.getDataByCategory(category);
    // print(list.length);
    notifyListeners();
  }
  List<Map<String,dynamic>> list2 = [];
  Future<void> getdatacart(int uid) async {
    list2 = await CartDatabase.getDataByUid(uid);
    // print(list2.length);
    notifyListeners();
  }
  List<Map<String,dynamic>> list3 = [];
  Future<void> getdataorders(int uid) async {
    list3 = await OrdersDatabase.getDataByUid(uid);
    // print(list2.length);
    notifyListeners();
  }
  List<Map<String,dynamic>> list4 = [];
  Future<void> getdatausers(int uid) async {
    list4 = await UserDatabase.getDataById(uid);
    // print(list2.length);
    notifyListeners();
  }
  int i = 0;
  Future<void> getFullPrice(int uid) async {
      i = await CartDatabase.getFullPrice(uid);

    // print(i);
    notifyListeners();
  }

}
