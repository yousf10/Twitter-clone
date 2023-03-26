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
      imageUrl: new AssetImage("assets/Image/posts/rashford.jpg")),
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

class UserList extends StatefulWidget {
  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  //late String folloetext = "Follow";
  String following = "Follow";
  String following1 = "Follow";

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
                  onPressed: () {
                    setState() {
                      following = change();
                    }
                  },
                  child: Text(
                    following,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
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

String change() {
  String a = "Following";
  return (a).toString();
}
