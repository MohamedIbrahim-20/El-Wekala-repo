import 'package:sqflite/sqflite.dart';

import 'model.dart';


class OrdersDatabase {



  static late Database database;

  static List<Data> data =[];
  // create Database
  // create Table
  // open Database
  // insert into Database
  // get from Database
  // update
  // delete

  static Future<void> creatDatabase()async{

    database = await openDatabase(
        'orders.db',
        version: 1,

        onCreate: (database, version){
          print ("Database is created !!");

          database.execute(
              'CREATE TABLE Test (id INTEGER PRIMARY KEY, uid INTEGER,img TEXT,title text, price INTEGER, company TEXT,detail1 TEXT, detail2 TEXT, category TEXT,amount INTEGER)'
          ).
          then((value) {
            print('TABLE IS CREATED !!');
          }).
          catchError((error){
            print(error.toString());
          });
        },

        onOpen: (database){
          print ('Database is open !!');
          // getDate(database,0);


        }

    );


  }

  static Future<List<Map<String,dynamic>>> getDataByUid(int uid) async {

    return database.rawQuery(
        'SELECT * FROM Test WHERE uid = ?',[uid]);

  }
  static Future<List<Map<String,dynamic>>> getData() async {

    return database.rawQuery(
        'SELECT * FROM Test');

  }
  static Future<int> getFullPrice(int uid) async {

    List<Map<String,dynamic>> l =await database.rawQuery(
        'SELECT SUM(price * amount) FROM Test WHERE uid =?',[uid]);
    // print();
    return l[0]["SUM(price * amount)"];
  }
  static Future<void> getDate()async {
    database.rawQuery(
        'SELECT * FROM Test'
    ).
    then((value) {
      // List<Map<String,dynamic>> list = value;
      // print(list[5]);
      print("length : ${value.length}");
    }).catchError((error){
      print(error.toString());
    });
  }


  static Future<void> insertDatabase({String? title,
    String? company,
    int? price,
    String? category,
    String? detail1,
    String? detail2,
    int? amount,String? img,int? uid})async{
    database.rawInsert(
        'INSERT INTO Test (uid,img,title, company,price,category,detail1,detail2,amount) VALUES ( ?,?,?,?,?,?,?,?,? )',[uid,img,title, company,price,category,detail1,detail2,amount]
    ).
    then((value) {
      print("Record $value is inserted !!");
    }).catchError((error){
      print ( error.toString());
    });
  }

  static void updateDatabase(String name, int age , int id){
    database.rawUpdate(
        'update table Test set name = ?, age =?  where id = ?',[name,age,id]

    ).
    then((value){
      print(value);
    }).
    catchError((error){
      print(error.toString());
    });


  }

  static void deleteDatabase(int uid){
    database.rawDelete(
        'DELETE FROM Test WHERE uid = ?' ,[uid]
    ).then((value){
      print(value);
    }).catchError((error){
      print(error.toString());
    });
  }

  static void deleteDatabaseById(int id){
    database.rawDelete(
        'DELETE FROM Test WHERE id = ?' ,[id]
    ).then((value){
      print(value);
    }).catchError((error){
      print(error.toString());
    });
  }

}