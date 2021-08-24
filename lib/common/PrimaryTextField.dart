import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  PrimaryTextField({required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(const Radius.circular(25))),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Center(
            child: TextField(
                obscureText: this.isPassword,
                decoration: InputDecoration(
                    hintText: this.hintText,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20)))));
  }
}
