import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Dilshad/Posts/Data_posts.dart';

class Posts extends StatelessWidget {
  final int iindex;
  const Posts({super.key, required this.iindex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 550,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 0.4, color: Color.fromARGB(255, 201, 199, 199)),
              color: Colors.white,
            ),
            height: height1 * 0.669,
            width: width1.toDouble(),
          ),
          Positioned(
            left: 12,
            top: 15,
            child: Container(
              height: height1 * 0.085,
              width: width1 * 0.18,
              child: CircleAvatar(
                foregroundColor: Colors.grey,
                backgroundColor: Color.fromARGB(255, 172, 194, 211),
                radius: 40,
                backgroundImage: posts[iindex].profileimg,
              ),
            ),
          ),
          Positioned(
              top: 15,
              left: width1 * 0.23,
              child: Row(
                children: [
                  Text(
                    posts[iindex].username.toString(),
                    style: TextStyle(
                        fontSize: width1 * 0.047, fontWeight: FontWeight.bold),
                  ),
                  ImageIcon(
                    posts[iindex].star,
                    color: Colors.blue,
                  ),
                  Text(posts[iindex].email.toString() + " ∙ ",
                      style: TextStyle(
                          fontSize: width1 * 0.05, color: Colors.grey)),
                  Text(posts[iindex].time.toString(),
                      style: TextStyle(
                          fontSize: width1 * 0.05, color: Colors.grey)),
                ],
              )),
          Positioned(
              left: width1 * 0.9,
              top: 17,
              child: ImageIcon(
                AssetImage("assets/Icon/postIcon/postmenu.png"),
                color: Colors.grey,
              ),),
          Positioned(
              left: width1 * 0.226,
              top: height1 * 0.06,
              child: Column(
                children: [
                  Container(
                    width: width1 * 0.736,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: posts[iindex].desc,
                            style: TextStyle(
                              fontSize: width1 * 0.05,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width1 * 0.746,
                    height: height1 * 0.388,
                    margin: EdgeInsets.only(top: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: posts[iindex].post, fit: BoxFit.cover)),
                  ),
                ],
              )),
          Positioned(
              bottom: 11,
              left: width1 * 0.22,
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/Icon/postIcon/comment.png"),
                    size: width1 * 0.06,
                  ),
                  Text(
                    "  " + posts[iindex].comments.toString(),
                    style: TextStyle(fontSize: width1 * 0.04),
                  )
                ],
              )),
          Positioned(
              bottom: 11,
              left: width1 * 0.41,
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/Icon/postIcon/retweets.png"),
                    size: width1 * 0.06,
                  ),
                  Text("  " + posts[iindex].retweets.toString(),
                      style: TextStyle(fontSize: width1 * 0.04))
                ],
              )),
          Positioned(
              bottom: 11,
              left: width1 * 0.61,
              child: Row(
                children: [
                  ImageIcon(AssetImage("assets/Icon/postIcon/like.png"),
                      size: width1 * 0.06),
                  Text("  " + posts[iindex].likes.toString(),
                      style: TextStyle(fontSize: width1 * 0.04))
                ],
              )),
          Positioned(
              bottom: 11,
              left: width1 * 0.82,
              child: ImageIcon(AssetImage("assets/Icon/postIcon/share.png"),
                  size: width1 * 0.06))
        ],
      ),
    );
  }
}

var width1 = 400;
var height1 = 900;
