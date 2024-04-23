import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelapp_dart/themes/theme_provider.dart';
import 'package:provider/provider.dart';

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
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.secondary,
            ),
            margin: const EdgeInsets.only(left: 25, top: 10, right: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //dark mode
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
            
                // switch
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
                   onChanged: (value) =>
                   Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
                   ),
              ],
            ),
          ),
        ],
        ),
    );
  }
}
