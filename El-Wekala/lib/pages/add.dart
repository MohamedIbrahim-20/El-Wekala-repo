import 'package:flutter/material.dart';
import 'package:untitled/utls/Database.dart';

TextEditingController idController = TextEditingController();
TextEditingController imgController = TextEditingController();
TextEditingController titleController = TextEditingController();
TextEditingController companyController = TextEditingController();
TextEditingController amountController = TextEditingController();
TextEditingController categoryController = TextEditingController();
TextEditingController detail1Controller = TextEditingController();
TextEditingController detail2Controller = TextEditingController();
TextEditingController priceController = TextEditingController();
bool? isValid;
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  static String id = "Add Product";
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  List<String> categories = [ 'Category','Technology', 'Clothing', 'watches', 'Kitchenware'];
  var myfirstcategory = 'Category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(

                  "Add Product",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextFormField(
                  controller: imgController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.image_outlined),
                    labelText: "Image Link",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_shopping_cart),
                    labelText: "Product Name",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: companyController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.description_outlined),
                    labelText: "Company Name",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.format_list_numbered),
                    labelText: "Amount",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonHideUnderline(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    width: 3,
                    color: Colors.transparent,
                  ),
                ),
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  onChanged: (value) {
                    myfirstcategory = value as String;
                    setState(() {});
                  },
                  value: myfirstcategory,
                  items: categories.map((e) {

                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),

                ),
              )),
              SizedBox(
                height: 15,
              ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 80),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.category),
              //       hintText: "Category",
              //       filled: true,
              //       fillColor: Colors.deepPurpleAccent,
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.transparent),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.transparent),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.transparent),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: detail1Controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.description),
                    labelText: "Detail1",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: detail2Controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.description),
                    labelText: "Detail2",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.price_change),
                    labelText: "Price",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      )),
                  onPressed: () async {

                    await LocalDatabase.insertDatabase(
                        img: imgController.text,
                        title: titleController.text,
                        amount: int.parse(amountController.text),
                        category: myfirstcategory.toString(),
                        company: companyController.text,
                        detail1: detail1Controller.text,
                        detail2: detail2Controller.text,
                        price: int.parse(priceController.text)).then((value){
                      isValid = true;
                    }).catchError((error){
                      print(error.toString());
                      isValid = false;
                    });

                    // print(myfirstcategory);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 15,left: 40,right: 40),
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                isValid == null?"":isValid == true?"Product Added Successfully":"Product Was NOT Added",
                style: TextStyle(
                  fontSize: 16.0,
                  color: isValid==null?Colors.black:isValid == true?Colors.green:Colors.red.shade800,
                ),

              ),
            ],
          ),
        ));
  }
}
