import 'package:flutter/material.dart';
import 'package:fooddelapp_dart/components/my_Drawer.dart';
import 'package:fooddelapp_dart/components/my_current_location.dart';
import 'package:fooddelapp_dart/components/my_description_box.dart';
import 'package:fooddelapp_dart/components/my_silver_app_bar.dart';
import 'package:fooddelapp_dart/components/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
// tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      // Uses NestedScrollView, a Flutter widget that allows you to
      //create complex scrolling effects by nesting multiple
      //scrollable components within each other.
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Text('Lool'),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current location
                const MyCureentLocation(),

                //  description box
                DescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
           ListView.builder(
           itemCount: 6,
            itemBuilder: (context, index) => Text('1st tab'),
           ),
             Text('da'),
              Text('a'),
        ],
        ),
      ),
    );
  }
}
