
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongoingproject/customs/custom_dropdownmenu.dart';
import 'package:ongoingproject/customs/custom_textform_field.dart';
import 'package:ongoingproject/customs/customtext.dart';
// import 'package:ongoingproject/customs/customtextfield.dart';

List<String> insureitems=[
" Motor Insurance",
"Domestic Insurance",
"Motor Individual item Insurance"
];
List<String> category=[
" Individual",
"Organization",
"Government",
"PSV"
];
List<String> brokers=[
"broker1",
"broker2",
"broker3"
];
List<String> valuers=[
" Valuer1",
"Valuer2",
"Valuer3"
];

class InsureitemForm extends StatefulWidget {
  const InsureitemForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InsureitemFormState createState() => _InsureitemFormState();
}

class _InsureitemFormState extends State<InsureitemForm> {
  TextEditingController startdate=TextEditingController();
  TextEditingController stopdate=TextEditingController();
  TextEditingController insurenceController=TextEditingController();
  TextEditingController categoryController=TextEditingController();
  TextEditingController brokerController=TextEditingController();
  TextEditingController valuerController=TextEditingController();

  String? selectedInsurance;
   Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
     const CustomText(text: "What do you want to insure:",),
     DropDown(list: insureitems, label: "insurance", controller:insurenceController,),
     const CustomText(text: "Category of your insurance:"),
     DropDown(list: category, label: "category", controller: categoryController,),
     const CustomText(text: "Period to insure:"),
     Padding(
       padding: const EdgeInsets.all(10.0),
       child: Row(children: [const CustomText(text: "from:",),
       SizedBox(width: MediaQuery.sizeOf(context).width*0.2,
         child: CustomTextformField(controller: startdate,
         border: const UnderlineInputBorder(),
         textcolor: Colors.black,
         suffixIcon: IconButton(onPressed:() => _selectDate(context, startdate) ,
          icon: const Icon(CupertinoIcons.calendar_badge_plus) ),)
       ),
        
    
       const CustomText(text: "To:"), 
       SizedBox(width: MediaQuery.sizeOf(context).width*0.25,
         child: CustomTextformField(controller: stopdate,
         border: const UnderlineInputBorder(),
         textcolor: Colors.black,
         suffixIcon: IconButton(onPressed: () => _selectDate(context, stopdate) , 
         icon: const Icon(CupertinoIcons.calendar_badge_plus)),
              ),
       )],
            ),
     ),
     const CustomText(text: "Your preferred Broker/ Agent:"),
     DropDown(list: brokers, label: "Brokers", controller: brokerController,),
     const CustomText(text: "Your preferred Valuer:"),
     DropDown(controller: valuerController,list: valuers, label: "Valuer"),
      ],
    );
  }
}

