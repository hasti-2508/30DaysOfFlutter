// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.pinimg.com/originals/a6/58/32/a65832155622ac173337874f02b218fb.png";

    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 226, 226, 226),
        child: ListView(
          children:[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Hasti Kapadiya",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  accountEmail: Text("hastikapadiya25@gmail.com"),
                  currentAccountPicture: Image.network(imageUrl),
                  margin: EdgeInsets.zero,
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.blueGrey,
              ),
              title: Text("Home",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart_fill,
                color: Colors.blueGrey,
              ),
              title: Text("Your Cart",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_2_squarepath,
                color: Colors.blueGrey,
              ),
              title: Text("Buy Again",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bell_circle_fill,
                color: Colors.blueGrey,
              ),
              title: Text("Orders",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.blueGrey,
              ),
              title: Text("Liked Items",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.blueGrey,
              ),
              title: Text("Profile",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            
            

          ],
        ),
      ),
    );
  }
}
