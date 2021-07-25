import 'package:flutter/material.dart';
import 'package:flutter2_learn/Screens/Login/components/background.dart';
import 'package:flutter2_learn/components/roundedInputField.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Login',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SvgPicture.asset(
        'assets/icons/login.svg',
        height: size.height * 0.35,
      ),
      RoundedInputField(
        hintText: 'Your Email',
        icon: Icons.person,
        onChanged: (String value) {},
      )
    ])));
  }
}
