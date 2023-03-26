import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Dilshad/Posts/Data_posts.dart';

import 'package:flutter_twitter_clone/Dilshad/Seaech_Screen/reuseable_Tweet.dart';
import 'package:flutter_twitter_clone/Dilshad/video.dart';
import '../Posts/post.dart';
import 'VideosForYou.dart';
import '../ssetting/Setting.dart';
import 'WhoToFollow.dart';

class TwitterSearchScreen extends StatefulWidget {
  const TwitterSearchScreen({super.key});

  @override
  State<TwitterSearchScreen> createState() => _TwitterSearchScreenState();
}

class _TwitterSearchScreenState extends State<TwitterSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ),
              ),
              SizedBox(
                height: 3,
              ),
              UserList(),
              SizedBox(
                height: 30,
              ),
              Posts(iindex: 0),
              Positioned(
                child: Text(
                  "Videos For You",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Positioned(
                child: Text(
                  "Check out these popular and trending videos for you",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Container(
                child: VideoList1(),
              ),

              SizedBox(
                height: 12,
              ),

              Posts(iindex: 1),

              SizedBox(
                height: 20,
              ),
              
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
