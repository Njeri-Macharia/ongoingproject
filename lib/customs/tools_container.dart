import 'package:flutter/material.dart';
import 'package:ongoingproject/constants/constants.dart';

class ToolsContainer extends StatelessWidget {
  final String title;
  final String description;
  final String imagepath;
  const ToolsContainer({super.key, 
  required this. title,
  required this.description, 
  required this.imagepath
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(onTap: () {
        
      },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: buttoncolor,
          ),
          child: Stack(
            // alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: menucolor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)
                  ),
                
                // width: MediaQuery.of(context).size.width * 0.8,
                height:  MediaQuery.of(context).size.height * 0.05,
                alignment: Alignment.center,
                child:  Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(alignment: Alignment.center,
                child: Image.asset(
                  imagepath,
                  height:  MediaQuery.of(context).size.height * 0.10,
                  )),
               Align(alignment: Alignment.bottomCenter,
                child: Text(description,
                style: const TextStyle(color: Colors.white,),
                   textAlign: TextAlign.center,),)
            ],
          ),
        ),
      ),
    );
  }
}