import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final Widget child;

  DefaultContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, blurRadius: 2, spreadRadius: 2
            )
          ],
          color: Colors.white),
      padding: EdgeInsets.all(10),
      child: this.child,
    );
  }
}
