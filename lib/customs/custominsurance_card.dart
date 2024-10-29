import 'package:flutter/material.dart';
import 'package:ongoingproject/constants/constants.dart';
import 'package:ongoingproject/customs/customtext.dart';
import 'package:qr_flutter/qr_flutter.dart';

class InsuranceCard extends StatelessWidget {
  final String insuranceName;
  final DateTime date;
  final Icon theicon;
  final String amount;

  const InsuranceCard({super.key,
  required this.insuranceName,
  required this.date,
  required this.theicon,
  required this.amount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.maxFinite,
    decoration: BoxDecoration(color: cardcolor,borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(mainAxisSize: MainAxisSize.max,
      children: [
      Column(
        mainAxisSize: MainAxisSize.min,children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,
            width: 50,
              child: Card(shape: const CircleBorder(),child: theicon)),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: CustomText(text: amount, textcolor: Colors.white,),
            ),
          ],)
        ],
      ),
      const SizedBox(height: 4,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: insuranceName, textcolor: Colors.white,),
            const SizedBox(height: 6,),
             CustomText(text: "Due Date:\n$date",
              textcolor: Colors.white,),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: QrImageView(data:"https://www.google.com",
          size: 80,),
        )
        
        ],
      )
    ],) ,
    );
  }
}