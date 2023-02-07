import 'package:flutter/material.dart';

class TwitterSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Twitter",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Positioned(
              left: 10,
              top: 10,
              child: Text(
                "Trends for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Positioned(left: 40, child: Text("#الزلازل")),
          Positioned(left: 40, child: Text("#David De Gea"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
