// home_page.dart
import 'package:flutter/material.dart';
import 'menu_drawer.dart';
import 'profile_section.dart';
import 'action_buttons.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuDrawer(), // Changed from drawer to endDrawer
      appBar: AppBar(
        title: Text("AeroVision", style: TextStyle(fontFamily: 'Pacifico',fontWeight: FontWeight.bold)),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer(); // Open right-side drawer
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileSection(),
            
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ActionButtons(),
        ],
      ),
    );
  }
}