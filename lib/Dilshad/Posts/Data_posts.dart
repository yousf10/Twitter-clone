import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post {
  AssetImage profileimg;
  AssetImage post;
  AssetImage star;
  String? username, email;
  String? time, desc, likes, comments, retweets;
  TextSpan? tag;
  Post(
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

List<Post> posts = [
  Post(
    tag: TextSpan(
      text: "\n#MUFC",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/mb.jpg"),
    username: "MUFC",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Man Utd",
    time: "4h",
    desc: "Officialy Man United is the winner of Carabao Cup! .🏆",
    post: AssetImage("assets/Image/posts/rashford.jpg"),
    comments: "1K",
    retweets: "101",
    likes: "5,050",
  ),
  Post(
    tag: TextSpan(
      text: "\n#Leo",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/barca.jpg"),
    username: "FCB Albiceleste",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@FCB..",
    time: "2h",
    desc:
        "🐐Messi is only 2 goals away from reaching 800 career goals. We are all Messi Fc tonight, arent\'t we?💪 ",
    post: AssetImage("assets/Image/posts/messi2.jpg"),
    comments: "12",
    retweets: "71",
    likes: "855",
  ),
  Post(
    tag: TextSpan(
      text: "\n#Leo",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/k.jpg"),
    username: "KEYs",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@KYSTAR",
    time: "1h",
    desc:
        "Lionel Messi still needs to explain how he held the kit only with no support 🤩",
    post: AssetImage("assets/Image/posts/messi1.jpg"),
    comments: "9",
    retweets: "64",
    likes: "413",
  ),
];
