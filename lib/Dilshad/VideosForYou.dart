import 'package:flutter/material.dart';

class Video {
  final String imageUrl;
  final int viewerCount;

  Video({required this.imageUrl, required this.viewerCount});
}

final List<Video> videoList = [
  Video(imageUrl: 'https://picsum.photos/id/1003/400/300', viewerCount: 11),
  Video(imageUrl: 'https://picsum.photos/id/1004/400/300', viewerCount: 3),
  Video(imageUrl: 'https://picsum.photos/id/1005/400/300', viewerCount: 8),
];

class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  late int _viewerCount;

  @override
  void initState() {
    super.initState();
    _viewerCount = videoList[0].viewerCount;
  }

  void _playVideo(int index) {
    setState(() {
      _viewerCount = videoList[index].viewerCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videoList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _playVideo(index);
            },
            child: Container(
              width: 250,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Stack(
                children: [
                  Image.network(videoList[index].imageUrl),
                  Positioned.fill(
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Positioned(top: 166, child: Icon(Icons.remove_red_eye)),
                  Positioned(
                    left: 20,
                    top: 170,
                    child: Text(
                      videoList[index].viewerCount.toString() + 'M',
                      style: TextStyle(
                          color: Colors.white, backgroundColor: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
