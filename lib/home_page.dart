import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First App"),),
      body: Center(
        child: Container(
          child: Text("welcome to my App"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
