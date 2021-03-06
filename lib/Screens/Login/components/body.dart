import 'package:flutter/material.dart';
import 'package:flutter2_learn/Screens/Login/components/background.dart';
import 'package:flutter2_learn/Screens/SingUp/signUpScreen.dart';
import 'package:flutter2_learn/components/haveAnAccountTip.dart';
import 'package:flutter2_learn/components/roundedButton.dart';
import 'package:flutter2_learn/components/roundedInputField.dart';
import 'package:flutter2_learn/components/roundedPasswordField.dart';
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
      const Text(
        'LOGIN',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: size.height * 0.03),
      SvgPicture.asset(
        'assets/icons/login.svg',
        height: size.height * 0.35,
      ),
      SizedBox(height: size.height * 0.03),
      RoundedInputField(
        hintText: 'Your Email',
        icon: Icons.person,
        onChanged: (String value) {},
      ),
      RoundedPasswordField(
        onChanged: (String value) {},
      ),
      RoundedButton(
        text: 'Login',
        pressed: () {},
      ),
      SizedBox(height: size.height * 0.03),
      HaveAnAccountTip(tap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      })
    ])));
  }
}
