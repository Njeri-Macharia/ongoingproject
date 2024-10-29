import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  final String text;
  final Color? textcolor;
  final double? fontsize;
  final FontWeight? fontweight;
  const CustomText({
    super.key,
    required this.text,
    this.textcolor,
    this.fontsize,this.fontweight
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(text, style: TextStyle(color: textcolor,fontSize: fontsize,fontWeight:fontweight,),
      textAlign: TextAlign.justify,
      ),
      
    );
  }
}