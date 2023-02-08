import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twitter_clone/Dilshad/reuseable_Tweet.dart';

class TwitterSearchScreen extends StatefulWidget {
  const TwitterSearchScreen({super.key});

  @override
  State<TwitterSearchScreen> createState() => _TwitterSearchScreenState();
}

class _TwitterSearchScreenState extends State<TwitterSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Twitter",
                border: OutlineInputBorder(),
              ),
            ),
          ),
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
          Container(
            width: 250,
            height: 77,
            child: const TweetTrending(
                HashTag: "Al-Zalazel",
                NumberOfTweets: "101K",
                TrendingIn: "Trending in World"),
          ),
          Container(
            width: 250,
            height: 77,
            child: const TweetTrending(
                HashTag: "Dilsha Haji .M ",
                NumberOfTweets: "5.6M",
                TrendingIn: "Trending in Iraq"),
          ),
          Container(
            width: 250,
            height: 77,
            child: const TweetTrending(
                HashTag: "Flutter.Dev",
                NumberOfTweets: "201K",
                TrendingIn: "Trending in Eouropa"),
          ),
          Positioned(
              child: Text(
            "Show more",
            style: TextStyle(color: Colors.blueAccent, fontSize: 17),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
    ;
  }
}
