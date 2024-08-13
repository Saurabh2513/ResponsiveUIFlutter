import 'package:flutter/material.dart';
var myDefaultBackground = Colors.grey[3000];
var myAppBar = AppBar(
  backgroundColor: Colors.black,
);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[200],
  child: const Column(children: [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text("Home"),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text("Account"),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text("Chat"),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text("Setting"),
    ),
  ]),
);