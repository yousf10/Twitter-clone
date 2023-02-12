import 'package:flutter/material.dart';
 void main() {
  runApp(
   MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World! App")),
        body: Center(
          child: Text("Hello World!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}
