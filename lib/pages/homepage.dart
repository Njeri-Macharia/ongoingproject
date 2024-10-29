import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongoingproject/constants/constants.dart';
import 'package:ongoingproject/customs/custombutton.dart';
import 'package:ongoingproject/customs/custominsurance_card.dart';
import 'package:ongoingproject/customs/customtext.dart';
import 'package:ongoingproject/customs/tabbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      const Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(text: "Good Morning,",fontweight: FontWeight.bold,),
                        CustomText(text: "Joseph Kamau",fontsize: 12,),
                
                      ],
                    ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.bell_fill) ), 
                    const CircleAvatar(backgroundImage: AssetImage ("assets/images/profile.jpg"),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
                    _newsCard(),
            // const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(text: "Activities",fontsize: 18,fontweight: FontWeight.w700,),
                IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.ellipsis)),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(height:MediaQuery.sizeOf(context).height*0.25 ,
              width:MediaQuery.sizeOf(context).width*0.4 ,
                child: Card(color: cardcolor,
                child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Card(child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.add)),),
                  const Spacer(),
                  const CustomText(text: "Add New\n Insurance",textcolor: Colors.white,)
                ],) ,),
              ),
              SizedBox(height:MediaQuery.sizeOf(context).height*0.25 ,
              width:MediaQuery.sizeOf(context).width*0.4 ,
                child: Card(color: cardcolor,
                child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Card(child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.square_list_fill)),),
                  const Spacer(),
                  const CustomText(text: "Claim an\n Insured event",textcolor: Colors.white,fontsize: 16,)
                ],) ,),
              )
            ],), 
            // const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(text: "My Insurances (10)",fontsize: 18,fontweight: FontWeight.w700,),
                IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.ellipsis)),
              ],
            ),
            const CustomText(text: "Check and Manage your insurances",fontsize: 11,),
            const SizedBox(height: 10,),
            Tabbar(onTabChanged: (index) {  setState(() {
                      _currentTabIndex = index;
                    }); },),
            const SizedBox(height: 20,),
                    _buildTabContent()
              ],
            ),
          ),
    )
      ;
  }
  Widget _newsCard(){
  return SizedBox(height: MediaQuery.sizeOf(context).height*0.18,
            child: Card(color: buttoncolor,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Insurance Made Easier",fontsize: 16,
                      textcolor: Colors.white,
                      fontweight: FontWeight.w600,),
                    CustomText(text: "Get our new product\n Travel Insurance",fontsize: 14,
                      textcolor: Colors.white,
                      fontweight:FontWeight.normal,),
                      SizedBox(height: 10,),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 20.0),
                         child: CustomButton(label: "Get a Qoute",
                          color: Colors.white,
                          textcolor: Colors.black,
                          height: 20,),
                       ),
                  ],
                ),
                Image.asset("assets/images/airplane.png",
                height: MediaQuery.sizeOf(context).height*0.08,),
              ],
            ),),
          );
}

 Widget _buildTabContent() {
    if (_currentTabIndex == 0) {
      // Active tab
      return Column(
        children: [
          InsuranceCard(
            insuranceName: 'Motor Car Insurance',
            date: DateTime.now(),
            theicon: const Icon(CupertinoIcons.car_detailed),
            amount: '78,000/year',
          ),
          const SizedBox(height: 20,),
          InsuranceCard(
            insuranceName: 'Motor Car Insurance',
            date: DateTime.now(),
            theicon: const Icon(CupertinoIcons.car_detailed),
            amount: '78,000/year',
          ),
        ],
      );
    } else {
      // Inactive tab
      return const Center(
        child: CustomText(text: "You have no inactive insurance"),
      );
    }
  }
}
