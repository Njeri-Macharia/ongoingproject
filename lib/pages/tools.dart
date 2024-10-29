import 'package:flutter/material.dart';
import 'package:ongoingproject/customs/tools_container.dart';

List items = [
  const ToolsContainer(
    title: "Add New Insurance",
    description: "You can insure any valuable thing you would like to insure",
    imagepath: "assets/images/car.png"
  ),
  const ToolsContainer(
    title: "Claim an Event",
    description: "Claim what we owe you and get your payout faster",
    imagepath: "assets/images/image.png"
  ),
  const ToolsContainer(
    title: "Renew Your Policy",
    description: "Pay your premium when the policy expires to ensure you are covered",
    imagepath: "assets/images/image.png"
  ),
  const ToolsContainer(
    title: "Talk to Us",
    description: "For any inquiries please contact us and we shall help you",
    imagepath: "assets/images/image.png"
  ),
];

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: items.length + 1, // +1 for the title
      itemBuilder: (context, index) {
        if (index == 0) {
          // Return the title widget
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Tools",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          );
        } else {
          // Return the list items
          return items[index - 1];
        }
      },
    );
  }
}