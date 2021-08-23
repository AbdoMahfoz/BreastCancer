import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget? child;
  final String? text;

  PrimaryButton({required this.onPressed, this.child, this.text});

  @override
  Widget build(BuildContext context) {
    if (this.child == null && this.text == null) {
      throw ArgumentError(
          "A child or text must be supplied to PrimaryButton widget"
      );
    }
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.all(const Radius.circular(25))),
        width: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              borderRadius: BorderRadius.all(const Radius.circular(25)),
              splashColor: Colors.blue[200],
              focusColor: Colors.blue[200],
              child: Theme(
                data: ThemeData(
                    buttonColor: Colors.white,
                    primaryTextTheme:
                        TextTheme(headline1: TextStyle(color: Colors.white))),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 13, horizontal: 25),
                  child: Center(
                    child: this.child ?? Text(
                      this.text ?? "", 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
                    )
                  )
                ),
              ),
              onTap: this.onPressed
            ),
        )
      );
  }
}
