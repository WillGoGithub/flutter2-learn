import 'package:flutter/material.dart';
import 'package:flutter2_learn/components/textFieldContainer.dart';
import 'package:flutter2_learn/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(icon, color: COLOR_PRIMARY),
            border: InputBorder.none),
        onChanged: onChanged,
      ),
    );
  }
}
