import 'package:ecommerce_app/Notification.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
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
            Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                        child: Icon(
                      Icons.account_circle_sharp,
                      size: 160,
                      color: (Colors.blue[300]),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Text(
                            "CAM Muneeb",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                          Container(
                              child: Text(
                            "abdulmuneeb989@gmail.com",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Container(
                              child: Text(
                            "Log Out",
                            style: TextStyle(fontSize: 10, color: Colors.pink),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Account Information".toUpperCase(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ],
            ),
            Container(
              height: 450,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                children: [
                  ListTile(
                    title: Text(
                      "User Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text("CAM Muneeb"),
                    trailing: Wrap(
                      spacing: 12,
                      children: [Icon(Icons.edit)],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text("abdulmuneeb989@gmial.com"),
                    trailing: Wrap(
                      spacing: 12,
                      children: [Icon(Icons.edit)],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Phone",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text("+92 300 0000000"),
                    trailing: Wrap(
                      spacing: 12,
                      children: [Icon(Icons.edit)],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Address",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text("Rawalpindi, Pakistan"),
                    trailing: Wrap(
                      spacing: 12,
                      children: [Icon(Icons.edit)],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Gender",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text("Male"),
                    trailing: Wrap(
                      spacing: 12,
                      children: [Icon(Icons.edit)],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Date Of Birth",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text("July 30, 2004"),
                    trailing: Wrap(
                      spacing: 12,
                      children: [Icon(Icons.edit)],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
