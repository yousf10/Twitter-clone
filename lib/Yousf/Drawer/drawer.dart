import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerMenu extends StatefulWidget {
  
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}
String arrow="assets/Icon/drawerIcon/arrow_down.png";
String arrow2="assets/Icon/drawerIcon/arrow_down.png";
class _DrawerMenuState extends State<DrawerMenu> {
   
  @override
  Widget build(BuildContext context) {
    return Drawer(width: 320,
      child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 320,
                height: 194,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          alignment: AlignmentDirectional.topStart,
                          margin: EdgeInsets.only(
                              left: 32, right: 180, top: 41, bottom: 12),
                          child: CircleAvatar(
                            foregroundColor: Colors.grey,
                            backgroundColor: Color.fromARGB(255, 172, 194, 211),
                            radius: 40,
                            backgroundImage:
                                AssetImage("assets/Image/Profile.jpg"),
                          ),
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(top: 30),
                            child: IconButton(
                                onPressed: () {},
                                icon: new ImageIcon(
                                  new AssetImage(
                                      "assets/Icon/navicon/menu.png"),
                                  size: 25,
                                )))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180.0, bottom: 2),
                      child: Text(
                        "Midoriya",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "      @Midoriyaizuku\n ",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                          Row(
                            children: [
                              Text("      4 ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              Text(
                                "Following  ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                              Text(
                                "2.5M ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                              Text(
                                "Followers",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 11),
                      width: 255,
                      child: Divider(
                        height: 0.3,
                        color: Color.fromARGB(255, 201, 199, 199),
                      ))),
              Container(
                child: Expanded(
                    child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage(
                              "assets/Icon/drawerIcon/profileicon.png"),
                          height: 31,
                          width: 31,
                        ),
                        title: Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      child: ListTile(
                        leading: Image(
                          image:
                              AssetImage("assets/Icon/drawerIcon/topics.png"),
                          height: 35,
                          width: 35,
                        ),
                        title: Text(
                          "Topics",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage("assets/Icon/drawerIcon/save.png"),
                          height: 30,
                          width: 30,
                        ),
                        title: Text(
                          "Bookmarks",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage("assets/Icon/drawerIcon/lists.png"),
                          height: 32,
                          width: 32,
                        ),
                        title: Text(
                          "Lists",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage(
                              "assets/Icon/drawerIcon/twittercircle.png"),
                          height: 37,
                          width: 37,
                        ),
                        title: Text(
                          "Twitter Circle",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                            margin: EdgeInsets.only(top: 21),
                            width: 255,
                            child: Divider(
                              height: 0.3,
                              color: Color.fromARGB(255, 201, 199, 199),
                            ))),
                    //expansion 1
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          width: 259,
                          color: Colors.white,
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              tilePadding: EdgeInsets.only(left: 1),
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 7, bottom: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: ImageIcon(new AssetImage(
                                              "assets/Icon/drawerIcon/moments.png"))),
                                      Container(
                                          margin: EdgeInsets.only(left: 18),
                                          child: Text(
                                            "Moments",
                                            style: TextStyle(fontSize: 16),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                              title: Text(
                                "Creator Studio",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              childrenPadding: EdgeInsets.only(right: 66),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //expansion 2
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 295,
                            color: Colors.white,
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile( onExpansionChanged: (value) => setState(() {
                                _onExpansion(value);
                              }) ,
                                trailing: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: ImageIcon(new AssetImage(
                                      arrow),size: 16,),
                                ),
                                iconColor: Colors.blue,
                                
                                children: [
                                  Container(padding: EdgeInsets.only(left: 12),
                                    margin: EdgeInsets.only( bottom: 20, top: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: ImageIcon(new AssetImage(
                                                "assets/Icon/drawerIcon/professional.png"))),
                                        Container(
                                          
                                            margin: EdgeInsets.only(left: 18),
                                            child: Text(
                                              "Twitter for Professionals",
                                              style: TextStyle(fontSize: 16),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 12),
                                    margin: EdgeInsets.only(bottom: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: ImageIcon(new AssetImage(
                                                "assets/Icon/drawerIcon/monetisation.png"))),
                                        Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Monetisation",
                                              style: TextStyle(fontSize: 16),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                                title: Text(
                                  "Professional Tools",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                childrenPadding: EdgeInsets.only(right: 66),
                              ),
                            ),
                          ),
                        ],
                      ),
                    
                    //expansion 3
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 295,
                          color: Colors.white,
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(onExpansionChanged: (value) => setState(() {
                                _onExpansion2(value);
                              }) ,
                                trailing: Padding(
                                  padding: const EdgeInsets.only(right: 36),
                                  child: ImageIcon(new AssetImage(
                                      arrow2),size: 16,),
                                ),
                              tilePadding: EdgeInsets.only(left: 1),
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20, top: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: ImageIcon(new AssetImage(
                                              "assets/Icon/drawerIcon/setting.png"))),
                                      Container(
                                          margin: EdgeInsets.only(left: 18),
                                          child: Text(
                                            "Settings and privacy",
                                            style: TextStyle(fontSize: 16),
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: ImageIcon(new AssetImage(
                                              "assets/Icon/drawerIcon/help.png"))),
                                      Container(
                                          margin: EdgeInsets.only(left: 18),
                                          child: Text(
                                            "Help Centre",
                                            style: TextStyle(fontSize: 16),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                              title: Text(
                                "Settings & Support",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              childrenPadding: EdgeInsets.only(right: 66),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              )
            ],
          )),
      backgroundColor: Colors.white,
    );
  }
}

_onExpansion(bool expanding){
  if(expanding){
    arrow="assets/Icon/drawerIcon/arrow_up.png";
  }else{
    arrow="assets/Icon/drawerIcon/arrow_down.png";
  }
}
_onExpansion2(bool expanding){
  if(expanding){
    arrow2="assets/Icon/drawerIcon/arrow_up.png";
  }else{
    arrow2="assets/Icon/drawerIcon/arrow_down.png";
  }
}