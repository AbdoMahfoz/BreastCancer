import 'package:flutter/material.dart';
import "../common/common.dart";

class LoginPageContentState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageContent();
}

class LoginPageContent extends State<LoginPageContentState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Hero(
                tag: "loginHeart",
                child: Image.asset("assets/images/heart.png",
                    width: 150, height: 150)),
          ),
          SizedBox(height: 50),
          DefaultContainer(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(decoration: InputDecoration(hintText: "Username")),
              TextField(decoration: InputDecoration(hintText: "Password")),
              SizedBox(height: 20),
              PrimaryButton(onPressed: () {}, text: "Login"),
              SizedBox(height: 10),
              Divider(color: Colors.black),
              Text("Dont have an account?",
                  style: TextStyle(color: Colors.grey[500])),
              SizedBox(height: 10),
              PrimaryButton(
                onPressed: () {},
                text: "Register",
              )
            ],
          ))
        ],
      ),
    )));
  }
}
