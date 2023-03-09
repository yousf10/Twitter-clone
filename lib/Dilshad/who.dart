/*import 'package:flutter/material.dart';

class WhoToFollowCard extends StatelessWidget {
  final String name;
  final String username;
  final String imageUrl;

  WhoToFollowCard(
      {required this.name, required this.username, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(
                '@$username',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton(
              onPressed: () {
                // Add onPress logic here
              },
              child: Text(
                'Follow',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class User {
  final String name;
  final String username;
  final AssetImage imageUrl;

  User({
    required this.name,
    required this.username,
    required this.imageUrl,
  });
}

List<User> userList = [
  User(
      name: 'Dilshad Haji',
      username: '@Dilshad_02',
      imageUrl: new AssetImage("assets/Image/posts/guko.jpg")),
  User(
    name: 'Yousef Mhamad',
    username: '@Yousef',
    imageUrl: new AssetImage("assets/Image/posts/barca.jpg"),
  ),
  User(
    name: 'Jumma Surchy',
    username: '@Jumma',
    imageUrl: new AssetImage("assets/Image/posts/messi1.jpg"),
  ),
  User(
    name: 'Dlovan Maran',
    username: '@Dlovan',
    imageUrl: new AssetImage("assets/Image/posts/mu.jpg"),
  )
];

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.1, color: Colors.black12),
            ),
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: userList[index].imageUrl,
                ),
                SizedBox(height: 8),
                Text(
                  userList[index].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  userList[index].username,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Follow'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    textStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
