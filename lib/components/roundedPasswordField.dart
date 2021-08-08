import 'package:flutter/material.dart';
import 'package:flutter2_learn/components/textFieldContainer.dart';
import 'package:flutter2_learn/constants.dart';
import 'package:flutter2_learn/utils/helpers/l10nHelper.dart';

class RoundedPasswordField extends StatefulWidget {
  final String? hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    this.hintText,
    this.icon = Icons.lock,
    required this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isObscured = true;

  void _toggleObscureText() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: _isObscured,
        decoration: InputDecoration(
            hintText: widget.hintText ?? L10n.of(context).password,
            icon: Icon(widget.icon, color: COLOR_PRIMARY),
            suffixIcon: IconButton(
              color: COLOR_PRIMARY,
              icon: Icon(Icons.visibility),
              onPressed: _toggleObscureText,
            ),
            border: InputBorder.none),
        onChanged: widget.onChanged,
      ),
    );
  }
}
