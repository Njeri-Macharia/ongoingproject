
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextformField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator? validator;
  late bool obscureText;
  final String? hintText;
  final Color? hintcolor;
  final Color? textcolor;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool isPassword;
  final InputBorder border;
   CustomTextformField({super.key,
  required this.controller,
   this.validator,
   this.obscureText=false,
   this.border=const OutlineInputBorder( borderRadius:BorderRadius.all(Radius.circular(20))),
   this.hintText,
   this.hintcolor,
   this.isPassword=false,
   this.prefixIcon,
   this.suffixIcon,
   this.textcolor
   });

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        obscureText: widget.obscureText,
        validator: widget.validator,
        controller:widget.controller ,
        decoration: InputDecoration(
          prefixIcon:Icon(widget.prefixIcon,),
          hintText: widget.hintText,
          suffixIcon:(widget.isPassword==false)? widget.suffixIcon:IconButton(
                  icon: Icon(
                    widget.obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.obscureText=!widget.obscureText;
                    });
                  },
                ),
          hintStyle: TextStyle(color: widget.hintcolor),
          border: widget.border
           ),
        
      ),
    );
  }
}