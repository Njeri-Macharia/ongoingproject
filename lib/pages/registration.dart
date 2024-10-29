import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ongoingproject/constants/constants.dart';
import 'package:ongoingproject/customs/custom_textform_field.dart';
import 'package:ongoingproject/customs/custombutton.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController email = TextEditingController();
  final TextEditingController idnumber = TextEditingController();
  final TextEditingController newpassword = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thank you for Choosing Us"),
      ),
      body: SingleChildScrollView( // Added to prevent overflow issues
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Added padding for better layout
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/mayfairlogo.png", height: 50),
                      const SizedBox(width: 10), // Added spacing
                      Text("Registration", style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  const SizedBox(height: 20), // Added spacing
                  CustomTextformField(
                    controller: email,
                    hintText: "Email",
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
                    controller: idnumber,
                    hintText: "ID Number",
                    prefixIcon: CupertinoIcons.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your ID Number";
                      }
                      if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                  return "ID Number should contain only digits";
                }
                      return null;
                    },
                  ),
                  CustomTextformField(
                    isPassword:true ,
                    controller: newpassword,
                    hintText: "New Password",
                    prefixIcon: CupertinoIcons.lock,
                    // suffixIcon: const Icon(CupertinoIcons.eye_fill),
                    obscureText: true, // Added to hide password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter password";
                      }
                      if (value.length < 6) { // Added password strength check
                        return "Password must be at least 6 characters long";
                      }
                      return null;
                    },
                  ),
                  CustomTextformField(
                    isPassword: true,
                    controller: confirmpassword,
                    hintText: "Confirm Password",
                    prefixIcon: CupertinoIcons.lock,
                    // suffixIcon: const Icon(CupertinoIcons.eye_fill),
                    obscureText: true, // Added to hide password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm your password";
                      }
                      if (value != newpassword.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: buttoncolor,
                          value: termsAccepted,
                          onChanged: (bool? value) {
                            setState(() {
                              termsAccepted = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: Text(
                            'I accept the terms and conditions',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    label: "Register",
                    onpressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (termsAccepted) {
                          nextpage();
                        } else {
                          // Show error if terms are not accepted
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please accept the terms and conditions')),
                          );
                        }
                      }
                    },
                    textcolor: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void nextpage() {
    Get.offAndToNamed("/newbusiness");
  }
}