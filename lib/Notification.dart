import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Notifications"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.notifications_none),
              Text("Your Notifications will appear here")
            ],
          ),
        )
    );
  }
}

class Notifbtn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
        Icon(Icons.notifications)
      )
    );
  }
}