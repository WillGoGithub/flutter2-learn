import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color btnColor, textColor;
  final void Function()? pressed, longPressed;
  const RoundedButton({
    Key? key,
    required this.text,
    this.btnColor = Colors.blue,
    this.textColor = Colors.white,
    required this.pressed,
    this.longPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            backgroundColor: btnColor,
          ),
          onPressed: pressed,
          onLongPress: longPressed,
          child: Text(text, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
