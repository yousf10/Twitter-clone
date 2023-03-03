import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Yousf/home/Posts.dart';
import 'package:flutter_twitter_clone/Yousf/home/userdata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: datalist.length,
      itemBuilder: (context, index) {
        return Stack(children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 0.4, color: Color.fromARGB(255, 201, 199, 199)),
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
                backgroundImage: datalist[index].profileimg,
              ),
            ),
          ),
          Positioned(
              top: 15,
              left: 83,
              child: Row(
                children: [
                  Text(
                    datalist[index].username,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ImageIcon(
                    datalist[index].star,
                    color: Colors.blue,
                  ),
                  Text(datalist[index].email + " ∙ ",
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                  Text(datalist[index].time,
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ],
              )),
          Positioned(
              right: 20,
              top: 17,
              child: ImageIcon(
                AssetImage("assets/Icon/postIcon/postmenu.png"),
                color: Colors.grey,
              )),
          Positioned(
              left: 83,
              top: 50,
              child: Column(
                children: [
                  Container(
                    width: 285,
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: datalist[index].desc,
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      datalist[index].tag
                    ])),
                  ),
                  Container(
                    width: 290,
                    height: 290,
                    margin: EdgeInsets.only(top: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: datalist[index].post, fit: BoxFit.cover)),
                  ),
                ],
              )),
          Positioned(
              bottom: 11,
              left: 80,
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/Icon/postIcon/comment.png"),
                    size: 27,
                  ),
                  Text(
                    "  " + datalist[index].comments,
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
                    AssetImage("assets/Icon/postIcon/retweets.png"),
                    size: 27,
                  ),
                  Text("  " + datalist[index].retweets,
                      style: TextStyle(fontSize: 17))
                ],
              )),
          Positioned(
              bottom: 11,
              right: 96,
              child: Row(
                children: [
                  ImageIcon(AssetImage("assets/Icon/postIcon/like.png"),
                      size: 27),
                  Text("  " + datalist[index].likes,
                      style: TextStyle(fontSize: 17))
                ],
              )),
          Positioned(
              bottom: 11,
              right: 48,
              child: ImageIcon(AssetImage("assets/Icon/postIcon/share.png"),
                  size: 27))
        ]);
      },
    ));
  }
}
