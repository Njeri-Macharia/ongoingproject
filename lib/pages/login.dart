import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ongoingproject/customs/custom_textform_field.dart';
import 'package:ongoingproject/customs/custombutton.dart';


TextEditingController email= TextEditingController();
TextEditingController password= TextEditingController();
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Image.asset("assets/images/mayfairlogo.png",),
         CustomTextformField(
          controller: email, 
          hintText: "email", 
          prefixIcon: CupertinoIcons.mail,
          validator: (value) {
             if (value == null || value.isEmpty) {
              return 'Please enter an email';
            }
            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
          ),
         CustomTextformField(
          controller: password, 
          hintText: "password",
          obscureText: true, 
          prefixIcon: CupertinoIcons.lock,
          isPassword: true,
          // suffixIcon:const Icon(CupertinoIcons.eye_fill),
          validator: (value) {
             if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if(value!="1234"){
              return "invalid password.";
            }
            return null;
          },
           ),
         CustomButton(
          label: "Login",
          onpressed:(){
             if (_formKey.currentState!.validate()) {
                  gotoDashboard();
                }
          },
          textcolor: Colors.white,),
          
        ],),
      ),
    );
  }
  void gotoDashboard(){
    Get.offAndToNamed("/Dashboard");
  }
}