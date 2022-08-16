
// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/utls/userdatabase.dart';
import 'loginscreen.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController passController = TextEditingController();

bool? isValid;
class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<Register> {

  bool isRememberme=false;
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
               hintText: 'Full Name',
               hintStyle: TextStyle(
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
               hintText: 'Email Address',
               hintStyle: TextStyle(
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
               hintText: 'Phone Number',
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
               color:Colors.black
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
// Widget buildcompassword(){
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:<Widget> [
//         const SizedBox(height: 10),
//           Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//             color: Colors.black26,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow:  const [
//               BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 6,
//                 offset: Offset(0,2)
//               )
//             ]
//           ),
//            height: 60,
//           child: const TextField(
//              obscureText: true,
//              style: TextStyle(
//                color:Colors.black87
//              ),
//              decoration: InputDecoration(
//                border: InputBorder.none,
//                contentPadding: EdgeInsets.only(top:14),
//                prefixIcon: Icon(
//                  Icons.lock,
//                  color: Color.fromARGB(255, 109, 159, 199),
//                ),
//                hintText: 'Confirm Password',
//                hintStyle: TextStyle(
//                  color: Color.fromARGB(255, 226, 226, 226)
//                )
//              ),
//              ),
//           ),
//     ],
//   );
// }
Widget buildButton(){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
  
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () async{
        await UserDatabase.insertUser(name: nameController.text,
            email: emailController.text,
            phone: phoneController.text,
            pass: passController.text).then((value){
              isValid = true;
        }).catchError((error){
          isValid = false;
        });
        if(isValid == true){
          nameController.text = "";
          emailController.text = "";
          phoneController.text = "";
          passController.text = "";
        }
        setState(() {});
      },
      padding: const EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.blue,
      child: const Text(
        'Sign Up',
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
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
    child: RichText(
      text: const TextSpan(
        children:[
          TextSpan(
          text:' Have an Account? ',
          style: TextStyle(
            color: Color.fromARGB(255, 77, 70, 70),
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
          ),
        TextSpan(
          text: 'Sign In',
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
                     // ignore: prefer_const_literals_to_create_immutables
                     children:  <Widget>[
                       const Text('Create new account' ,
                           style: TextStyle(
                             color: Colors.blue,
                             fontSize: 38,
                             fontWeight: FontWeight.bold
                            ),
                          ),
                        const Text('please fill the form to continue..' ,
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 18,
                          ),
                        ),

                        const SizedBox( height: 38,),
                          buildName(),
                          const SizedBox( height: 5),
                          buildEmail(),
                          const SizedBox( height: 15),
                          buildPhoneNum(),
                          const SizedBox( height: 15),
                          buildpassword(),
                          // const SizedBox( height: 15),
                          // buildcompassword(),
                          const SizedBox( height: 15),
                          buildButton(),
                          const SizedBox( height: 15),
                          buildsignup(),
                          const SizedBox( height: 15),
                          Text(
                         isValid == null?"":isValid == true?"Signed Up Successfully":"Wrong Information Try Again",
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