import 'package:calculator/components/custom_roundedbtm.dart';
import 'package:calculator/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import'package:gap/gap.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen  extends StatelessWidget {
   LoginScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFfcfcfc),
        elevation: 5,
        leading: Icon(
          Icons.close,
          color:Colors.grey,
        ),
        actions:[
          Text(
            "Need some Help",
            style: 
            TextStyle(
              fontSize: 14,
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          )
        ]
      ),
      body: Container(
        color: Colors.yellow,
        width:MediaQuery.of(context).size.width,

        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children:[
        Gap(40),
        Text("Let's Get Started",
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color:Colors.black87,
        ),
        ),
        Gap(6),
        Text(
          "Sign up and we will Continue",
          style:TextStyle(
            fontSize: 16,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
        Gap(20),
       CustomTextField(
  label: "Email",
  hintText: "abc123@gmail.com",
  prefixIcon: Icons.mail,
  labelText: "Enter your email address",
  maxLength: 320,
),
        CustomTextField(
          label: "Username",
          hintText: "samir23bogati",
          prefixIcon:Icons.person,
          labelText:"Enter your Username",
          maxLength:50,
        ), CustomTextField(
          label: "Password",
          hintText: "Enter Password",
          prefixIcon:Icons.lock,
          labelText:"Enter your Password" ,
          maxLength:20,
          type: TextFieldType.Password,

        ),
 CustomRoundedButton(
  label: "SignUp",
  onPressed: () {
    Fluttertoast.showToast(msg: "SignUp button pressed");
  },
),          //  MaterialButton(
            //   onPressed: () { },
            //   child: Text("Material Button")),
            //   OutlinedButton(onPressed: () {},
            //   child: Text("outline")),
            //   ElevatedButton(onPressed: (){},
            //    child: Text("eleva Button")),
      ],
      ),),
    );
  }
}

