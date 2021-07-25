import 'package:flutter/material.dart';
import 'package:flutter2_learn/components/textFieldContainer.dart';
import 'package:flutter2_learn/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(icon, color: COLOR_PRIMARY),
            suffixIcon: Icon(
              Icons.visibility,
              color: COLOR_PRIMARY,
            ),
            border: InputBorder.none),
        onChanged: onChanged,
      ),
    );
  }
}
