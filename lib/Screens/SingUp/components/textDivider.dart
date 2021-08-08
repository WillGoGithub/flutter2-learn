import 'package:flutter/material.dart';
import 'package:flutter2_learn/constants.dart';
import 'package:flutter2_learn/utils/helpers/l10nHelper.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              L10n.of(context).or,
              style:
                  TextStyle(color: COLOR_PRIMARY, fontWeight: FontWeight.w600),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
        child: Divider(
      height: 1.5,
    ));
  }
}
