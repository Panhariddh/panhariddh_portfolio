// menu_drawer.dart
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(title: Text('Home'), onTap: () {}),
          ListTile(title: Text('Projects'), onTap: () {}),
          ListTile(title: Text('About'), onTap: () {}),
          ListTile(title: Text('Contact'), onTap: () {}),
        ],
      ),
    );
  }
}