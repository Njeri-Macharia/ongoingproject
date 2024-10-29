// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ongoingproject/constants/constants.dart';
// import 'package:ongoingproject/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onpressed;
  final Color color;
  final Color? textcolor;
  final double width;
  final double height;
  const CustomButton({
    super.key,
    required this.label,
    this.onpressed, 
    this.color=buttoncolor,
    this.height=50,
    this.width=100,
    this.textcolor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpressed,
    style: ElevatedButton.styleFrom(minimumSize:  Size(width,height),
    foregroundColor: color,
    backgroundColor: color,
    disabledBackgroundColor:color
    ), child: Text(label,
     style: Theme.of(context).textTheme.titleMedium?.copyWith(color: textcolor),));
  }
}