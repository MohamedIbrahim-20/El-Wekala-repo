
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pages/loginscreen.dart';
import 'package:untitled/pages/yourorders.dart';

import '../dbprovider.dart';
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
class Profile extends StatelessWidget
{

  Widget buildName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]
          ),
          height: 60,
          child: TextField(
            enabled: false,
            controller: nameController,
            keyboardType: TextInputType.name,
            style: TextStyle(
                color:Colors.black
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.spellcheck,
                  color: Colors.blue,
                ),
                labelText: 'Full Name',
                labelStyle: TextStyle(
                    color: Colors.black
                )
            ),
          ),
        ),
      ],
    );
  }
  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]
          ),
          height: 60,
          child: TextField(
            enabled: false,
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color:Colors.black
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                labelText: 'Email Address',
                labelStyle: TextStyle(
                    color: Colors.black
                )
            ),
          ),
        ),
      ],
    );
  }
  Widget buildPhoneNum(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]
          ),
          height: 60,
          child: TextField(
            enabled: false,
            controller: phoneController,
            keyboardType: TextInputType.number,
            style: TextStyle(
                color:Colors.black
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.settings_phone,
                  color: Colors.blue,
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                    color: Colors.black
                )
            ),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // nameController.text = "ggg";
    Provider.of<DbProvider>(context).getdatausers(Provider.of<DbProvider>(context).uid);
    nameController.text = Provider.of<DbProvider>(context).list4[0]['name'];
    emailController.text = Provider.of<DbProvider>(context).list4[0]['email'];
    phoneController.text = Provider.of<DbProvider>(context).list4[0]['phone'];
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.greenAccent,
      //   title: Text('My account'),
      //   centerTitle: true,
      // ),
      backgroundColor: const Color(0xF3FFFEFE),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children:[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(20.0),
                  child:
                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      size: 100.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              buildName(),

              SizedBox(
                height: 20.0,
              ),


              buildEmail(),
              SizedBox(
                height: 20.0,
              ),
              buildPhoneNum(),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){
                  print('button pressed');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => YourOrders())
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      'Your orders',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                    ),
                    Icon(
                        Icons.arrow_forward_ios
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 33.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Expanded(
                    child: RaisedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));

                    },
                      child: Text(
                        'LOG OUT',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.redAccent,
                    ),
                  ),

                ],
              ),


            ],

          ),
        ),
      ),

    );

  }



}