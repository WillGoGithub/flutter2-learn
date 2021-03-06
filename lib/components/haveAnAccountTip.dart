import 'package:flutter/material.dart';
import 'package:flutter2_learn/constants.dart';

class HaveAnAccountTip extends StatelessWidget {
  final bool login;
  final void Function() tap;
  const HaveAnAccountTip({
    Key? key,
    this.login = true,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: COLOR_PRIMARY),
        ),
        GestureDetector(
          onTap: tap,
          child: Text(
            login ? "Sign Up" : "Sign ",
            style: TextStyle(color: COLOR_PRIMARY, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
