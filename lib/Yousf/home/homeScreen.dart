import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Yousf/home/Posts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Post(
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
          Post(
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
          Post(
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
        ],
      ),
    );
  }
}
