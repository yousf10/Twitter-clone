import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Dilshad/Seaech_Screen/Data_Model.dart';
import 'package:flutter_twitter_clone/Dilshad/Seaech_Screen/reuseable_Tweet.dart';
import '../VideosForYou.dart';
import '../ssetting/Setting.dart';
import '../WhoToFollow.dart';

class TwitterSearchScreen extends StatefulWidget {
  const TwitterSearchScreen({super.key});

  @override
  State<TwitterSearchScreen> createState() => _TwitterSearchScreenState();
}

class _TwitterSearchScreenState extends State<TwitterSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Container(
            height: 30,
            width: 30,
            child: CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundColor: Color.fromARGB(255, 172, 194, 214),
              radius: 40,
              backgroundImage: AssetImage("assets/Image/Profile.jpg"),
            ),
          ),
        ),
        title: Container(
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
              hintText: "Search Twitter",
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingScreen(),
                ),
              );
            },
          ),
        ],
      ),*/
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Positioned(
                  left: 10,
                  top: 10,
                  child: Text(
                    "Trends for you",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              Positioned(
                  child: Text(
                "Only on Twitter . Trending",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              )),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 250,
                height: 77,
                child: const TweetTrending(
                    HashTag: "#Developer",
                    NumberOfTweets: "101K",
                    TrendingIn: "Trending in World"),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 250,
                height: 77,
                child: const TweetTrending(
                    HashTag: "#DilshaD Haji .M ",
                    NumberOfTweets: "5.6M",
                    TrendingIn: "Trending in Iraq"),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 250,
                height: 77,
                child: const TweetTrending(
                    HashTag: "#Flutter.Dev",
                    NumberOfTweets: "201K",
                    TrendingIn: "Trending in Eouropa"),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 250,
                height: 77,
                child: const TweetTrending(
                    HashTag: "#TeamWork",
                    NumberOfTweets: "7.3K",
                    TrendingIn: "Trending in OOP"),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 250,
                height: 77,
                child: const TweetTrending(
                    HashTag: "#CR7",
                    NumberOfTweets: "7.7M",
                    TrendingIn: "Trending in Sport"),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 250,
                height: 77,
                child: const TweetTrending(
                    HashTag: "#Nature",
                    NumberOfTweets: "4.2K",
                    TrendingIn: "Trending in Entertaintment"),
              ),
              SizedBox(
                height: 10,
              ),
              Positioned(
                  left: 10,
                  child: Text(
                    "Show more",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 17),
                  )),
              SizedBox(
                height: 10,
              ),
              Positioned(
                  child: Text(
                "Who to follow",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              )),
              SizedBox(
                height: 3,
              ),
              UserList(),
              SizedBox(
                height: 30,
              ),
              Positioned(
                  child: Text(
                "Videos For You",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              )),
              Positioned(
                  child: Text(
                "Check out these popular and trending videos for you",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54),
              )),
              SizedBox(
                height: 15,
              ),
              VideoList(),
            ],
          );
        },
        //mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
    ;
  }
}
