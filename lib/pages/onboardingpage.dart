// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';
import 'package:ongoingproject/constants/constants.dart';
import 'package:ongoingproject/customs/custombutton.dart';


class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  int currentpage=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterCarousel(
            items: [
              _buildCarouselItem(
                context,
          
          
               "assets/images/mayfairlogo.png",
                "You are in safe hands",
                "Our insurance solutions will help you focus on your goals without worrying about the risks and costs",
              ),
              _buildCarouselItem(
                context,
                "assets/images/image.png",
                "Insure the Dearest to your Heart",
                "We offer insurance for your assets like motor insurance, marine insurance, PVT, Erection risks, home insurance among others. It's personalized for you.",
              ),
              _buildCarouselItem(
                context,
                "assets/images/image.png",
                "Let us Cover you",
                "We take you back to the situation you were before any incident occurred. Make your claims faster and be refunded at the same rate.",
              ),
            ],
            options: CarouselOptions(onPageChanged: (index, reason) {setState(() {
              currentpage=index;
            });
              
            },
            autoPlayInterval: const Duration(seconds: 2),
              slideIndicator:
              CircularSlideIndicator(
                slideIndicatorOptions:SlideIndicatorOptions(
                indicatorBackgroundColor: buttoncolor.withOpacity(0.2),
                currentIndicatorColor: buttoncolor,
                indicatorRadius: 7
                )),
              viewportFraction: 1.0,

              autoPlay: true,
              reverse: false,
              height: MediaQuery.of(context).size.height*0.6,
            ),
          ),
          const SizedBox(height: 20,),
           CustomButton(label: currentpage==2?"Register":"Get Started",onpressed: register,textcolor: Colors.white,)
        ],
      ),
    );
  }

void register(){
  Get.offAndToNamed("/register");
}

  Widget _buildCarouselItem(BuildContext context, String imagePath, String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Text(
            description,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
          ),
         
        ],
        
      ),
    );
  }
}
