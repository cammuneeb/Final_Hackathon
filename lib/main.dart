import 'package:ecommerce_app/Notification.dart';
import 'package:ecommerce_app/history.dart';
import 'package:ecommerce_app/list_page.dart';
import 'package:ecommerce_app/login.dart';
import 'package:ecommerce_app/register.dart';
import 'package:ecommerce_app/settings.dart';
import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(debugShowCheckedModeBanner: false, home: Login(),
          routes: {
            "/login" :(context) => Login(),
            "/register" :(context) => Signup(),
            "/MyDrawer" :(context) => MyDrawer(),
          },
              //  MyDrawer()
              );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CAM Mart"),
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
