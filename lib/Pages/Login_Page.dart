// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_catalog/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_page.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 44.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User name",
                          labelText: "UserName",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "password",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                          
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, myRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 60 : 100,
                        height: changeButton ? 60 : 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(changeButton ? 30 : 8),
                            color: Colors.blue),
                      ),
                    ),

                    // ElevatedButton(
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, myRoutes.homeRoute);
                    //     }),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
