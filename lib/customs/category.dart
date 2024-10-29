
import 'package:flutter/material.dart';
import 'package:ongoingproject/customs/custom_textform_field.dart';
// import 'package:ongoingproject/customs/custombutton.dart';
import 'package:ongoingproject/customs/customtext.dart';
// import 'package:ongoingproject/customs/customtextfield.dart'; // Make sure to import the CustomTextField

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _kraController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return 
       SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: "Fill the Details:"),
                const SizedBox(height: 20),
                const CustomText(text: "Full Name:"),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.8,
                  child: CustomTextformField(border: const UnderlineInputBorder(),
                    controller: _nameController,
                    // hintText: "Enter your full name",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Name cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const CustomText(text: "KRA Pin:"),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.8,
                  child: CustomTextformField(border: const UnderlineInputBorder(),
                    controller: _kraController,
                    // hintText: "Enter your KRA Pin",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "KRA Pin cannot be empty";
                      }
                      // Add more specific KRA Pin validation if needed
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const CustomText(text: "Occupation:"),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.8,
                  child: CustomTextformField(border: const UnderlineInputBorder(),
                    controller: _occupationController,
                    // hintText: "Enter your occupation",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Occupation cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const CustomText(text: "Upload ID/Passport:"),
                
                const SizedBox(height: 20),
                const CustomText(text: "Upload Logbook:"),
                
                const SizedBox(height: 20),
                const CustomText(text: "Upload the valuation report from a trusted valuer:"),

                const SizedBox(height: 20),
                
              ],
            ),
          ),
        ),
      
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _kraController.dispose();
    _occupationController.dispose();
    super.dispose();
  }
}