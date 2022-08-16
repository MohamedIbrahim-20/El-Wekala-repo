
// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pages/MainPage.dart';
import 'package:untitled/pages/add.dart';
import 'package:untitled/utls/cartdatabase.dart';
import 'package:untitled/utls/userdatabase.dart';
import '../dbprovider.dart';
import 'register.dart';
TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();
bool? isValid;

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {

  bool isRememberme=false;

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
            controller: emailController,
             keyboardType: TextInputType.emailAddress,
             style: TextStyle(
               color:Colors.black87
             ),
             decoration: InputDecoration(
               border: InputBorder.none,
               contentPadding: EdgeInsets.only(top:14),
               prefixIcon: Icon(
                 Icons.email,
                 color: Colors.blue,
               ),
               hintText: 'Email',
               hintStyle: TextStyle(
                 color: Colors.black
               )
             ),
             ),
          ),
    ],
  );
}
Widget buildpassword(){
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
            controller: passController,
             obscureText: true,
             style: TextStyle(
               color:Colors.black87
             ),
             decoration: InputDecoration(
               border: InputBorder.none,
               contentPadding: EdgeInsets.only(top:14),
               prefixIcon: Icon(
                 Icons.lock,
                 color: Colors.blue,
               ),
               hintText: 'Password',
               hintStyle: TextStyle(
                 color: Colors.black
               )
             ),
             ),
          ),
    ],
  );
}
Widget buildforgetPassword(){
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: ()=>print("Forgot Password pressed"),
      padding: const EdgeInsets.only(right: 0),
      child: const Text(
        'Forget Password?',
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
Widget buildRememberCb(){
    return  SizedBox( 
      height: 20,
      child: Row(
        children:<Widget> [
          Theme(
            data: ThemeData(unselectedWidgetColor: const Color.fromARGB(255, 75, 73, 73)),
             child: Checkbox(
               value: isRememberme, 
               checkColor: Colors.white,
               activeColor: Colors.blue,
                onChanged: (value) { 
                  setState(() {
                    isRememberme= value!;
                  });
                 },

               
               ),
             ),
             const Text(
               'Remember Me',
             style: TextStyle(
               fontSize: 20,
               color: Color.fromARGB(255, 96, 117, 126),
               fontWeight: FontWeight.bold

             ),
             ),
        ]
        ),
    );
}
Widget buildButton(){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
  
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () async {
        if(emailController.text == "admin"&&passController.text == "admin"){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Add()));
        }else {
            List<Map<String, dynamic>> l = [];
            await UserDatabase.validation(
                    emailController.text, passController.text)
                .then((value) {
              // print(value.length);
              if (value.length != 0) {
                isValid = true;
                l = value;
              } else {
                isValid = false;
              }
            });
            if (isValid == true) {
              await CartDatabase.creatDatabase();
              Provider.of<DbProvider>(context, listen: false).uid = l[0]['id'];
              Provider.of<DbProvider>(context, listen: false)
                  .getdatacart(l[0]['id']);
              Provider.of<DbProvider>(context, listen: false).getFullPrice(
                  Provider.of<DbProvider>(context, listen: false).uid);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            }
          }
          setState(() {});
      },
      padding: const EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.blue,
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
Widget buildsignup(){
  return GestureDetector(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Register())),
    child: RichText(
      text: const TextSpan(
        children:[
          TextSpan(
          text:' Don\'t Have an Account? ',
          style: TextStyle(
            color: Color.fromARGB(255, 77, 70, 70),
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
          ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ), 
        ),
        ]
        ),
      ),
  );
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
         child: GestureDetector(
           child: Stack(
             children:  [
               Container(
                 height: double.infinity,
                 width: double.infinity,
                 decoration: const BoxDecoration(
                   color: Colors.white
                   // gradient: LinearGradient(
                   //   begin: Alignment.topCenter,
                   //   end: Alignment.bottomCenter,
                   //   colors:[
                   //     Color.fromARGB(102, 65, 92, 91),
                   //     Color(0x9947b1af),
                   //     Color.fromARGB(252, 118, 197, 196),
                   //     Color.fromARGB(255, 94, 124, 124),
                   //   ] )
                    ),
                   child:  SingleChildScrollView(
                     padding: const EdgeInsets.symmetric(
                       horizontal: 25,
                       vertical: 120,
                     ),
                     child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  <Widget>[
                       const Text('Login' ,
                           style: TextStyle(
                             color: Colors.blue,
                             fontSize: 38,
                             fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox( height: 40,),
                          buildEmail(),
                          const SizedBox( height: 5),
                          buildpassword(),
                          const SizedBox( height: 15),
                          buildforgetPassword(),
                          buildRememberCb(),
                          const SizedBox( height: 15),
                          buildButton(),
                          const SizedBox( height: 15),
                          buildsignup(),
                          const SizedBox( height: 15),
                          Text(
                            isValid == null?"":isValid == true?"Logged In Successfully":"Wrong Information Try Again",
                         style: TextStyle(
                           fontSize: 16.0,
                           color: isValid==null?Colors.black:isValid == true?Colors.green:Colors.red.shade800,
                         ),

                       ),
                          
                     ]
                     ),
                     ),
                   ),
             ],
           ),
         )
         ),
    );
  }
}