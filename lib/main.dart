import 'package:ecommerce_app/Notification.dart';
import 'package:ecommerce_app/history.dart';
import 'package:ecommerce_app/list_page.dart';
import 'package:ecommerce_app/settings.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyDrawer());
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Ecom App UI"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                icon: Notifbtn())
          ],
        ),
        body: Listpage(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("CAM Muneeb"),
                accountEmail: Text("abdulmuneeb989@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.account_circle),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Listpage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text("History"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => History()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
              ),
            ],
          ),
        ));
  }
}
