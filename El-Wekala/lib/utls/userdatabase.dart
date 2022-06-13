import 'package:sqflite/sqflite.dart';

import 'model.dart';


class UserDatabase {



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
        'users.db',
        version: 1,

        onCreate: (database, version){
          print ("Database is created !!");

          database.execute(
              'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT,email text, phone TEXT,pass TEXT)'
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

  static Future<List<Map<String,dynamic>>> getDataById(int id) async {

    return database.rawQuery(
        'SELECT * FROM Test WHERE id = ?',[id]);

  }
  static Future<void> getDate()async {
    database.rawQuery(
        'SELECT * FROM Test'
    ).
    then((value) {
      // List<Map<String,dynamic>> list = value;
      // print(list[5]);
      print("length : ${value.length}");;
    }).catchError((error){
      print(error.toString());
    });
  }
  static Future<List<Map<String,dynamic>>> validation(String email,String pass)async {
    return database.rawQuery(
        'SELECT * FROM Test WHERE email =? and pass =?',[email,pass]
    );
  }


  static Future<void> insertUser({
    required String name,
    required String email,
    required String phone,
    required String pass,
    })async{
    database.rawInsert(
        'INSERT INTO Test (name,email, phone,pass) VALUES ( ?,?,?,? )',[name,email, phone,pass]
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

  static void deleteDatabase(int id){
    database.rawDelete(
        'DELETE FROM Test WHERE id = ?' ,[id]
    ).then((value){
      print(value);
    }).catchError((error){
      print(error.toString());
    });
  }

}