import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  bool switchValue = true;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explore Settings",
                style: TextStyle(color: Colors.black),
              ),
              Text("@DilshadHaji12",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Positioned(
              child: Text(
            "Location",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 10,
          ),
          Positioned(
              child: Text(
            "Show content in this location",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          )),
          Positioned(
              child: Text(
            "when this is on,you'll see what's",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )),
          Positioned(
              child: Text(
            "happening around you right now.",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )),
          SizedBox(
            height: 20,
          ),
          Positioned(
              child: Text(
            "Personalization",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 10,
          ),
          Positioned(
              child: Text(
            "Trends for you",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          )),
          Positioned(
              child: Text(
            "you can personalize the trends for ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )),
          Positioned(
              child: Text(
            "you based on your location and who",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )),
          Positioned(
              child: Text(
            "you follow.",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )),
        ]));
  }
}
