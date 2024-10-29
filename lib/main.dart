import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ongoingproject/constants/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(GetMaterialApp(
    getPages: Routes.routes,initialRoute: "/",

  debugShowCheckedModeBanner: false,theme: ThemeData(
    textTheme: TextTheme(

      // title text
      titleMedium: GoogleFonts.poppins(color: Colors.black,
      fontSize: 18,fontWeight: FontWeight.w600),
     
      // body text
      bodySmall:GoogleFonts.poppins(color: Colors.black,
      fontSize: 12,fontWeight: FontWeight.normal) )
  ),
  ) );
}
