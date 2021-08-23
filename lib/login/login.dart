import 'package:flutter/material.dart';
import "loginContent.dart";

class LoginPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPage();
}

class LoginPage extends State<LoginPageState>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> doubleAnimation;

  startAnimation() async {
    animation =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    doubleAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: animation, curve: Curves.easeIn));
    await Future.delayed(Duration(seconds: 2));
    await animation.forward();
    await Future.delayed(Duration(seconds: 1));
    await animation.reverse();
    Navigator.push(
        context,
        PageRouteBuilder(
            pageBuilder: (_, __, ___) => LoginPageContentState(),
            transitionDuration: Duration(milliseconds: 1500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween<double>(begin: 0.0, end: 1.0)
                  .chain(CurveTween(curve: Curves.easeInOut));
              final doubleAnimation = animation.drive(tween);
              return FadeTransition(
                opacity: doubleAnimation,
                child: child,
              );
            }));
  }

  @override
  initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hero(tag: "loginHeart", child: Image.asset("assets/images/heart.png")),
        AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Opacity(opacity: doubleAnimation.value, child: child);
            },
            child: Text("Your health is our priority", 
              style: TextStyle(fontStyle: FontStyle.italic)
            ))
      ],
    )));
  }
}
