import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TwitterSearchScreen extends StatefulWidget {
  const TwitterSearchScreen({super.key});

  @override
  State<TwitterSearchScreen> createState() => _TwitterSearchScreenState();
}

class _TwitterSearchScreenState extends State<TwitterSearchScreen> {
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
    );;
  }
}