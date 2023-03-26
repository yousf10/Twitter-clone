import 'package:flutter/material.dart';
import 'package:flutter_hw3/hw5data.dart';
import 'package:flutter_hw3/messagedata.dart';

class messageS extends StatelessWidget {
  const messageS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: DataList.length,
        itemBuilder: (context, index) {
        return ListTile(
            leading: CircleAvatar(
              backgroundImage: DataList[index].img,
              radius: 25,
            ),
            title: Row(
              children:  [
                Text(
                  DataList[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  DataList[index].email,
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ],
            ),
            subtitle: Text(
              DataList[index].message,
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          );
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.email_outlined),
      ),  
    );
  }
}

