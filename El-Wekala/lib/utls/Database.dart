import 'package:sqflite/sqflite.dart';

import 'model.dart';


class LocalDatabase {



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
      'product.db',
      version: 1,

      onCreate: (database, version){
        print ("Database is created !!");

        database.execute(
            'CREATE TABLE Test (id INTEGER PRIMARY KEY, img TEXT,title text, price INTEGER, company TEXT,detail1 TEXT, detail2 TEXT, category TEXT,amount INTEGER)'
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

  static Future<List<Map<String,dynamic>>> getDataByCategory(String category) async {

   return database.rawQuery(
       'SELECT * FROM Test WHERE category = $category');

  }
  static Future<void> getDate(Database database,int i)async {
   database.rawQuery(
       'SELECT * FROM Test'
   ).
   then((value) {
     // List<Map<String,dynamic>> list = value;
     // print(list[5]);
     print("length : ${value.length}");
     value.forEach((element){
       data.add(

         Data(
           id: element['id']as int ,
           img: element['img']as String,
           title: element['title']as String,
           company: element['company']as String,
           detail1: element['detail1']as String,
           detail2: element['detail2']as String,
           category: element['category']as String,
           price: element['price']as int,
           amount: element['amount']as int,
         )
       );

     });
     print(data[i].id);
     print(data[i].img);
     print(data[i].title);
     print(data[i].company);
     print(data[i].price);
     print(data[i].category);
     print(data[i].detail1);
     print(data[i].detail2);
     print(data[i].amount);


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
    int? amount,String? img})async{
    database.rawInsert(
        'INSERT INTO Test (img,title, company,price,category,detail1,detail2,amount) VALUES ( ?,?,?,?,?,?,?,? )',[img,title, company,price,category,detail1,detail2,amount]
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