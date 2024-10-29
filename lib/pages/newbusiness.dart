import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ongoingproject/constants/constants.dart';
import 'package:ongoingproject/customs/category.dart';
import 'package:ongoingproject/customs/insureitem.dart';

class Newbusiness extends StatefulWidget {
  const Newbusiness({super.key});

  @override
  State<Newbusiness> createState() => _NewbusinessState();
}

class _NewbusinessState extends State<Newbusiness> {
   int currentstep=0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(body:  Theme(
      data: Theme.of(context).copyWith(
        colorScheme: const ColorScheme.light(primary: buttoncolor)
      ),
      child: Stepper(type: StepperType.horizontal,elevation: 0,
      currentStep: currentstep,
     
      onStepContinue: () {setState(() {
         if (currentstep < 2) {
                currentstep += 1;
              }
              if(currentstep>=2){
                gotologin();
              }
      }); },
       onStepCancel: () {
            setState(() {
              if (currentstep > 0) {
                currentstep -= 1;
              }
            });
          },
        steps: [
          Step(
            state: currentstep>0?StepState.complete:StepState.indexed,
            isActive: currentstep>=0, 
            title:const Text("Insure Item") , 
            content: const InsureitemForm()),
          Step(state: currentstep>1?StepState.complete:StepState.indexed,
            isActive: currentstep>=1, 
            title:const Text("Category"),
            content: const Category()),
          Step(
            state: currentstep>2?StepState.complete:StepState.indexed,
            isActive: currentstep>=2,
            title:const Text("Verify") , 
            content: const Text("Verify"))
        ]),
    ),);
  }
  void gotologin(){
    Get.offAndToNamed("/login");
  }
}