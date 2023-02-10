import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostTopics extends StatefulWidget {
  const PostTopics({super.key});

  @override
  State<PostTopics> createState() => _PostTopicsState();
}

class _PostTopicsState extends State<PostTopics> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PostFollowTopics extends StatefulWidget {
  const PostFollowTopics({super.key});

  @override
  State<PostFollowTopics> createState() => _PostFollowTopicsState();
}

class _PostFollowTopicsState extends State<PostFollowTopics> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Post extends StatelessWidget {
  final AssetImage profileimg, post, star;
  final String username, email;
  final String time, desc, likes, comments, retweets;
  final TextSpan tag;
  const Post(
      {super.key,
      required this.profileimg,
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

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          border:
              Border.all(width: 0.4, color: Color.fromARGB(255, 201, 199, 199)),
          color: Colors.white,
        ),
        height: 445,
        width: 390,
      ),
      Positioned(
        left: 15,
        top: 15,
        child: Container(
          height: 60,
          width: 60,
          child: CircleAvatar(
            foregroundColor: Colors.grey,
            backgroundColor: Color.fromARGB(255, 172, 194, 211),
            radius: 40,
            backgroundImage: profileimg,
          ),
        ),
      ),
      Positioned(
          top: 15,
          left: 83,
          child: Row(
            children: [
              Text(
                username,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ImageIcon(star),
              Text(email + " ∙ ",
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
              Text(time, style: TextStyle(fontSize: 20, color: Colors.grey)),
            ],
          )),
      Positioned(
          right: 20,
          top: 17,
          child: ImageIcon(AssetImage("assets/Icon/drawerIcon/topics.png"))),
      Positioned(
          left: 83,
          top: 50,
          child: Column(
            children: [
              Container(
                width: 285,
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: desc,
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  tag
                ])),
              ),
              Container(
                width: 290,
                height: 290,
                margin: EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: post, fit: BoxFit.cover)),
              ),
            ],
          )),
      Positioned(
          bottom: 11,
          left: 80,
          child: Row(
            children: [
              ImageIcon(
                AssetImage("assets/Icon/drawerIcon/topics.png"),
                size: 27,
              ),
              Text(
                " " + comments,
                style: TextStyle(fontSize: 17),
              )
            ],
          )),
      Positioned(
          bottom: 11,
          left: 150,
          child: Row(
            children: [
              ImageIcon(
                AssetImage("assets/Icon/drawerIcon/topics.png"),
                size: 27,
              ),
              Text(" " + retweets, style: TextStyle(fontSize: 17))
            ],
          )),
      Positioned(
          bottom: 11,
          right: 100,
          child: Row(
            children: [
              ImageIcon(AssetImage("assets/Icon/drawerIcon/topics.png"),
                  size: 27),
              Text(" " + likes, style: TextStyle(fontSize: 17))
            ],
          )),
      Positioned(
          bottom: 11,
          right: 48,
          child: ImageIcon(AssetImage("assets/Icon/drawerIcon/topics.png"),
              size: 27))
    ]);
  }
}
