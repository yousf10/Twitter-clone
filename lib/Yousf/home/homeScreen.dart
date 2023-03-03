import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Yousf/home/Posts.dart';
import 'package:flutter_twitter_clone/Yousf/home/userdata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width1 = MediaQuery.of(context).size.width;
    var height1 = MediaQuery.of(context).size.height;

    return Scaffold(
        body: ListView.builder(
      itemCount: datalist.length,
      itemBuilder: (context, index) {
        return Container(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 0.4, color: Color.fromARGB(255, 201, 199, 199)),
                color: Colors.white,
              ),
              height: height1*0.585,
              width: width1,
            ),
            Positioned(
              left: 12,
              top: 15,
              child: Container(
                height: height1*0.085,
                width: width1*0.18,
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
                left: width1*0.23,
                child: Row(
                  children: [
                    Text(
                      datalist[index].username,
                      style: TextStyle(fontSize:width1*0.05 , fontWeight: FontWeight.bold),
                    ),
                    ImageIcon(
                      datalist[index].star,
                      color: Colors.blue,
                    ),
                    Text(datalist[index].email + " ∙ ",
                        style: TextStyle(fontSize: width1*0.05 , color: Colors.grey)),
                    Text(datalist[index].time,
                        style: TextStyle(fontSize: width1*0.05 , color: Colors.grey)),
                  ],
                )),
            Positioned(
                left: width1*0.9,
                top: 17,
                child: ImageIcon(
                  AssetImage("assets/Icon/postIcon/postmenu.png"),
                  color: Colors.grey,
                )),
            Positioned(
                left: width1*0.226,
                top: height1*0.06,
                child: Column(
                  children: [
                    Container(
                      width: width1*0.736,
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: datalist[index].desc,
                            style: TextStyle(
                              fontSize: width1*0.05 ,
                            )),
                        datalist[index].tag
                      ])),
                    ),
                    Container(
                      width: width1*0.746 ,
                      height: height1*0.388,
                      
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
                left: width1*0.22,
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/Icon/postIcon/comment.png"),
                      size: width1*0.06,
                    ),
                    Text(
                      "  " + datalist[index].comments,
                      style: TextStyle(fontSize: width1*0.04),
                    )
                  ],
                )),
            Positioned(
                bottom: 11,
                left: width1*0.41,
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/Icon/postIcon/retweets.png"),
                      size: width1*0.06,
                    ),
                    Text("  " + datalist[index].retweets,
                        style: TextStyle(fontSize: width1*0.04))
                  ],
                )),
            Positioned(
                bottom: 11,
                left: width1*0.61,
                child: Row(
                  children: [
                    ImageIcon(AssetImage("assets/Icon/postIcon/like.png"),
                        size: width1*0.06),
                    Text("  " + datalist[index].likes,
                        style: TextStyle(fontSize: width1*0.04))
                  ],
                )),
            Positioned(
                bottom: 11,
                left: width1*0.82,
                child: ImageIcon(AssetImage("assets/Icon/postIcon/share.png"),
                    size: width1*0.06))
          ]),
        );
      },
    ));
  }
}
