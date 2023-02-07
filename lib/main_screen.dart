import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  int currentindex=0;
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 0),
        selectedFontSize: 16,
        selectedIconTheme: IconThemeData(color: Colors.black,opacity: 1.0,size: 24),
        unselectedIconTheme:  IconThemeData(color: Colors.black,opacity: 1.0,size: 24),
        currentIndex: currentindex,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        onTap: (int index)=>setState(() =>currentindex=index) ,
      
        items: [
        BottomNavigationBarItem( label: " ", icon: ImageIcon( AssetImage("assets/Icon/navicon/home1.png",),size: 46,color: Colors.black),
        activeIcon: Image.asset("assets/Icon/navicon/home2.png",
        color: Colors.black,height: 59,width: 59,)
        ,backgroundColor:Colors.blue),

        BottomNavigationBarItem( label: " ", icon: ImageIcon( AssetImage("assets/Icon/navicon/search1.png",),size: 69,color: Colors.black),
        activeIcon: Image.asset("assets/Icon/navicon/search2.png",
        color: Colors.black,height: 69,width: 69,)
        ,backgroundColor:Colors.blue),

        BottomNavigationBarItem( label: " ", icon: ImageIcon( AssetImage("assets/Icon/navicon/mic1.png",),size: 50,color: Colors.black),
        activeIcon: Image.asset("assets/Icon/navicon/mic2.png",
        height: 58,width: 58,)
        ,backgroundColor:Colors.blue),

        BottomNavigationBarItem( label: " ", icon: ImageIcon( AssetImage("assets/Icon/navicon/notfication1.png",),size: 52,color: Colors.black),
        activeIcon: Image.asset("assets/Icon/navicon/notfication2.png",
        color: Colors.black,height: 63,width: 63,)
        ,backgroundColor:Colors.blue),

        BottomNavigationBarItem( label: " ", icon: ImageIcon( AssetImage("assets/Icon/navicon/message1.png",),size: 52,color: Colors.black),
        activeIcon: Image.asset("assets/Icon/navicon/message2.png",
        color: Colors.black,height: 63,width: 63,)
        ,backgroundColor:Colors.blue),


      ],
),
    );
  }
}