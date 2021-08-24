import 'package:flutter/material.dart';
import "../common/common.dart";

class LoginPageContentState extends StatefulWidget {
  @override
  LoginPageContent createState() => LoginPageContent();
}

class LoginPageContent extends State<LoginPageContentState> {
  bool isLoading = false;
  
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
              PrimaryTextField(hintText: "Email"),
              PrimaryTextField(hintText: "Password", isPassword: true),
              SizedBox(height: 10),
              PrimaryButton(
                  onPressed: () {
                    setState(() => this.isLoading = !this.isLoading);
                  },
                  text: "Login",
                  isLoading: this.isLoading),
              SizedBox(height: 10),
              Divider(color: Colors.black),
              Text("Dont have an account?",
                  style: TextStyle(color: Colors.black)),
              SizedBox(height: 10),
              PrimaryButton(
                onPressed: () {
                  setState(() => this.isLoading = !this.isLoading);
                },
                text: "Register",
              )
            ],
          ))
        ],
      ),
    )));
  }
}
