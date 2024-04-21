import 'package:flutter/material.dart';
import 'package:fooddelapp_dart/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          // home list tile
          MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            //  this naviator.pop(context) will get rid of the drawer and take user directly to the home page
            onTap: () => Navigator.pop(context),
          ),

          // settings list tiles
          MyDrawerTile(
            text: 'S E T T I N G S',
            icon: Icons.home,
            onTap: () {},
          ),

          Spacer(),
          // logout list tiles
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: MyDrawerTile(
              text: 'L O G O U T',
              icon: Icons.home,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
