import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongoingproject/constants/constants.dart';
// import 'package:ongoingproject/customs/settingsitem.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50),
          child: Column(
            children: [
              Text(
                "Settings", 
                style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.1,
                    backgroundImage: const AssetImage("assets/images/profile.jpg"),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Joseph Kamau",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "josephkamau@gmail.com",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Dark mode'),
                      trailing: Switch(activeColor: buttoncolor,
                        value: true,
                        onChanged: (value) => print(value),
                      ),
                    ),
                    ListTile(
                      title: const Text('Notifications'),
                      trailing: Switch(activeColor: buttoncolor,
                        value: true,
                        onChanged: ((value) => print(value)),
                      ),
                    ),
                    const ListTile(
                      title: Text('Language'),
                      subtitle: Text('English'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(thickness: .5),
                    const ListTile(
                      title: Text('FAQ'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const ListTile(
                      title: Text('About us'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const ListTile(
                      title: Text('Terms of service'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(height: 50,),
                    const ListTile(
                      title: Text('Logout', style: TextStyle(color: Colors.red),),
                      trailing: Icon(CupertinoIcons.arrow_right_circle, color:Colors.red,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}