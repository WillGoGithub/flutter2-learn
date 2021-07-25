import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color btnColor, textColor;
  final void Function()? pressed, longPressed;
  const RoundedButton({
    Key? key,
    this.text = "",
    required this.icon,
    this.btnColor = Colors.blue,
    this.textColor = Colors.white,
    this.pressed,
    this.longPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: TextButton.icon(
          icon: Icon(
            icon,
            color: textColor,
          ),
          label: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          style: TextButton.styleFrom(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            backgroundColor: btnColor,
          ),
          onPressed: pressed,
          onLongPress: longPressed,
        ),
      ),
    );
  }
}
