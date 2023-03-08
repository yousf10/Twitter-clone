import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
              height: height1*0.669,
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
            profileimg: new AssetImage("assets/Image/Profile.jpg"),
            username: "Yousf",.
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
