import 'package:ecommerce_app/Notification.dart';
import 'package:ecommerce_app/list_page.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
              icon: Notifbtn())
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                child: Icon(
                  Icons.history,
                  size: 70,
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              "Your History",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            iphone(92, 400, "Price : Rs. 1,50,000", "20 Pieces"),
            laptop(92, 400, "Price : Rs. 3,50,000", "240 Pieces"),
            ssd(92, 400, "Price : Rs. 12,000", "440 Pieces"),
            iphone(92, 400, "Price : Rs. 1,50,000", "20 Pieces"),
            laptop(92, 400, "Price : Rs. 3,50,000", "240 Pieces"),
            ssd(92, 400, "Price : Rs. 12,000", "440 Pieces"),
            iphone(92, 400, "Price : Rs. 1,50,000", "20 Pieces"),
            laptop(92, 400, "Price : Rs. 3,50,000", "240 Pieces"),
            ssd(92, 400, "Price : Rs. 12,000", "440 Pieces"),
            iphone(92, 400, "Price : Rs. 1,50,000", "20 Pieces"),
            laptop(92, 400, "Price : Rs. 3,50,000", "240 Pieces"),
            ssd(92, 400, "Price : Rs. 12,000", "440 Pieces"),
            iphone(92, 400, "Price : Rs. 1,50,000", "20 Pieces"),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
