import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color btnColor, textColor;
  final void Function()? pressed, longPressed;
  const RoundedIconButton({
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
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
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
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            backgroundColor: btnColor,
          ),
          onPressed: pressed,
          onLongPress: longPressed,
        ),
      ),
    );
  }
}
