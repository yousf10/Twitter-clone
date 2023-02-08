import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TweetTrending extends StatelessWidget {
  final String HashTag;
  final String NumberOfTweets;
  final String TrendingIn;

// this is class is used to make HashTag's that are Trending in world or local area dynamicaly. 

  const TweetTrending(
      {super.key,
      required this.HashTag,
      required this.NumberOfTweets,
      required this.TrendingIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
              width: 100,
              height: 100,
              top: 10,
              left: 40,
              child: Text(
                TrendingIn,
                style: TextStyle(fontSize: 15, color: Colors.black54),
              )),
          Positioned(
              child: Text(
            HashTag,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          )),
          Positioned(
            child: Text(
              NumberOfTweets + " Tweets",
              style: TextStyle(color: Colors.black54, fontSize: 13),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
