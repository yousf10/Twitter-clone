import 'package:flutter/material.dart';

class data {
  String name, message, email;
  AssetImage img;
  data(
      {required this.img,
      required this.name,
      required this.email,
      required this.message});
}

List<data> DataList = [
  data(
      img: AssetImage("assets/Image/Profile.jpg"),
      name: "Yousf",
      email: '@Yousf72321565  \u2981 1d',
      message: "You: سلام"),
  data(
      img: AssetImage("assets/Image/Profile.jpg"),
      name: "Azad",
      email: '@Azad12345543  \u2981 2d',
      message: "You: hello !"),
  data(
      img: AssetImage("assets/Image/Profile.jpg"),
      name: "newroz",
      email: '@newroz12345  \u2981 1d',
      message: "You: Happy Newroz !")
];
