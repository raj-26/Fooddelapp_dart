import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Row(
            children: [
              //dark mode
              Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.background,
                ),
              ),

              // switch
              CupertinoSwitch(
                value: false,
                 onChanged: (value) {}
                 ),
            ],
          ),
        ],
        ),
    );
  }
}
