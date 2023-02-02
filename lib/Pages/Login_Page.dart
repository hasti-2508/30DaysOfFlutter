import "package:flutter/material.dart";
import 'package:flutter/services.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
            ),
           SizedBox(height: 16.0,),
            Text("Welcome",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            SizedBox(height: 16.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter User name", 
                  labelText: "UserName"
                  ),
                  ),
                TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                 labelText: "password"
                ),
              ),
              SizedBox(height: 16.0,),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  print("login successful!!");
                  }
                  ),  
                              
              ],
              ),
            )
          ],
          
        ));
  }
}
