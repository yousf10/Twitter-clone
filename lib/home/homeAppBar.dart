import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) => IconButton(onPressed: (){
          
        }, icon: const  Icon(Icons.account_circle_outlined,size: 28,color: Color.fromARGB(255, 27, 27, 27),),),),
        title: Center(child: Container( child: Image(image: AssetImage("assets/Icon/navicon/twitter-logo-2429.png"),height: 24,width: 24,),margin: EdgeInsets.only(right: 1),) ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed: () {
          }, icon: ImageIcon(new AssetImage("assets/Icon/navicon/sparkles_icon_152754.png"),color: Color.fromARGB(255, 27, 27, 27),size: 28,))
        ],
      ), 
    );
  }
}


