import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {
  @override
  _ListpageState createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(child: wig()),
      ),
    );
  }
}

Widget wig() {
  return Container(
    child: Column(
      children: [
        iphone(125,400,"Price : Rs. 1,50,000","20 Pieces"),
        laptop(125,400,"Price : Rs. 3,50,000","240 Pieces"),
        ssd(125,400,"Price : Rs. 12,000","440 Pieces"),
        iphone(125,400,"Price : Rs. 1,50,000","20 Pieces"),
        laptop(125,400,"Price : Rs. 3,50,000","240 Pieces"),
        ssd(125,400,"Price : Rs. 12,000","440 Pieces"),
        iphone(125,400,"Price : Rs. 1,50,000","20 Pieces"),
        laptop(125,400,"Price : Rs. 3,50,000","240 Pieces"),
        ssd(125,400,"Price : Rs. 12,000","440 Pieces"),
        SizedBox(height: 20,)
      ],
    ),
  );
}

Widget iphone(double h, double w,String t,String t2) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
    height: h,
    width: w,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Container(
          height: 125,
          width: 115,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            child: Image.asset(
              'assets/apple-iphone-12-pro-review-one-month-later_aska.h960.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I Phone 12",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                t,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                t2,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget laptop(double h, double w,String t, String t2) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
    height: h,
    width: w,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Container(
          height: 125,
          width: 115,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            child: Image.asset(
              'assets/laptop.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HP Spectre x360",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                t,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                t2,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget ssd(double h, double w,String t, String t2) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
    height: h,
    width: w,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Container(
          width: 115,
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            child: Image.asset(
              'assets/ssd.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SAMSUNG SSD 500GB",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                t,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                t2,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
