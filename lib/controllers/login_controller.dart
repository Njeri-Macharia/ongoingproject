import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
var email=TextEditingController().obs;
var password = TextEditingController().obs;

@override
void onClose(){
email.value.dispose();
password.value.dispose();
super.onClose();
}
}