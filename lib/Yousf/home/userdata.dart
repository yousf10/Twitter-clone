import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data {
  AssetImage profileimg, post, star;
  String username, email;
  String time, desc, likes, comments, retweets;
  TextSpan tag;
  data(
      {required this.profileimg,
      required this.post,
      required this.username,
      required this.email,
      required this.time,
      required this.desc,
      required this.likes,
      required this.comments,
      required this.retweets,
      required this.star,
      required this.tag});
}

List<data> datalist = [
  data(
    tag: TextSpan(
      text: "#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/Profile.jpg"),
    username: "Yousf",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Yousfbarwary",
    time: "2h",
    desc: "texttexttexttexttexttexttexttext texttext",
    post: AssetImage("assets/Image/Profile.jpg"),
    comments: "2",
    retweets: "33",
    likes: "200",
  ),
  data(
    tag: TextSpan(
      text: "#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/Profile.jpg"),
    username: "Yousf",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Yousfbarwary",
    time: "2h",
    desc: "texttexttexttexttexttexttexttext texttext",
    post: AssetImage("assets/Image/Profile.jpg"),
    comments: "2",
    retweets: "33",
    likes: "200",
  ),
  data(
    tag: TextSpan(
      text: "#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/Profile.jpg"),
    username: "Yousf",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Yousfbarwary",
    time: "2h",
    desc: "texttexttexttexttexttexttexttext texttext",
    post: AssetImage("assets/Image/Profile.jpg"),
    comments: "2",
    retweets: "33",
    likes: "200",
  ),
  data(
    tag: TextSpan(
      text: "#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/Profile.jpg"),
    username: "Yousf",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Yousfbarwary",
    time: "2h",
    desc: "texttexttexttexttexttexttexttext texttext",
    post: AssetImage("assets/Image/Profile.jpg"),
    comments: "2",
    retweets: "33",
    likes: "200",
  ),
  data(
    tag: TextSpan(
      text: "#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/Profile.jpg"),
    username: "Yousf",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Yousfbarwary",
    time: "2h",
    desc: "texttexttexttexttexttexttexttext texttext",
    post: AssetImage("assets/Image/Profile.jpg"),
    comments: "2",
    retweets: "33",
    likes: "200",
  ),
];
