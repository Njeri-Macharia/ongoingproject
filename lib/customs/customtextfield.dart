// // import 'package:finalproject/constants/constant.dart';
// import 'package:flutter/material.dart';

// class CustomTextField extends StatefulWidget {
//   final TextEditingController? controller;
//   final bool obscureText;
//   final String? hintText;
//   final Color? hintcolor;
//   final Color? textcolor;
//   final IconData? prefixIcon;
//   final Widget? suffixIcon;
//   final bool? isPassword;
//   final InputBorder border;
//   // final double? width;
//   final String? Function(String?)? validator;

//     const CustomTextField(
//       {super.key,
//       this.controller,
//       this.hintText,
//       this.hintcolor,
//       this.prefixIcon,
//       this.textcolor,
//       this.suffixIcon,
//       // this.width,
//       this.validator,
//       this.border=const OutlineInputBorder( borderRadius:BorderRadius.all(Radius.circular(20))),
//       this.obscureText = false,
//       this.isPassword = false,
//       });

//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     String? errorText;
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: TextField(
//           style:Theme.of(context).textTheme.bodySmall?.copyWith(color: widget.textcolor),
//           obscureText: widget.obscureText,
//           controller: widget.controller,
//           decoration: InputDecoration(
//               border: widget.border,            
//               hintText: widget.hintText,
//               hintStyle: TextStyle(color: widget.hintcolor),
//               prefixIcon: Icon(widget.prefixIcon),
//               suffixIcon: widget.suffixIcon,
//               errorText: errorText
//               ),onChanged: (value) {
//           if (widget.validator != null) {
//             setState(() {
//               errorText =widget.validator!(value);
//             });
//           }}),
//     );
//   }
// }