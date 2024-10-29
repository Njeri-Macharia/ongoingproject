import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final List<String> list;
  final String label;
  final TextEditingController controller;
  
  const DropDown({
    super.key,
    required this.list, 
    required this.label, 
    required this.controller
  });
 
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedInsurance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: DropdownMenu<String>(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        onSelected: (String? value) {
          setState(() {
            selectedInsurance = value;
          });
        },
        controller: widget.controller,
        hintText: widget.label,
        enableFilter: true,
        width: MediaQuery.of(context).size.width * 0.8,
        dropdownMenuEntries: widget.list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
      ),
    );
  }
}