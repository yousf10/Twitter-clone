import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class juma extends StatelessWidget {
const juma({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              child: Text("I am in the container",
        width: 200,
        height: 200,
        color: Colors.blue,
         padding: EdgeInsets.all(3),
        margin: EdgeInsets.all(6),
        alignment: Alignment.center,
        style: TextStyle(fontSize: 18)),

    );
  }
}