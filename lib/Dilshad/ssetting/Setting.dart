import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Seaech_Screen/search_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

bool _switchValue = false;
bool _switchValue1 = false;

class _SettingScreenState extends State<SettingScreen> {
  bool switchValue = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => TwitterSearchScreen())));
          },
        ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Positioned(
            child: Text(
              "Location",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Show content in this location",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          child: Switch(
                            value: _switchValue1,
                            onChanged: (value) {
                              setState(() {
                                _switchValue1 = value;
                              });
                            },
                            activeTrackColor: Colors.lightBlue,
                            activeColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      "when this is on,you'll see what's",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    child: Text(
                      "happening around you right now.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            child: Text(
              "Personalization",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                child: Text(
                  "Trends for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                width: 196,
              ),
              Container(
                child: Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                  activeTrackColor: Colors.lightBlue,
                  activeColor: Colors.blue,
                ),
              ),
            ],
          ),
          Positioned(
            child: Text(
              "you can personalize the trends for ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          Positioned(
            child: Text(
              "you based on your location and who",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          Positioned(
            child: Text(
              "you follow.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
