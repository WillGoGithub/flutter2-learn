import 'package:flutter/material.dart';
import 'package:flutter2_learn/Screens/Login/LoginScreen.dart';
import 'package:flutter2_learn/Screens/SingUp/components/background.dart';
import 'package:flutter2_learn/Screens/SingUp/components/socialIcon.dart';
import 'package:flutter2_learn/Screens/SingUp/components/textDivider.dart';
import 'package:flutter2_learn/components/haveAnAccountTip.dart';
import 'package:flutter2_learn/components/roundedButton.dart';
import 'package:flutter2_learn/components/roundedInputField.dart';
import 'package:flutter2_learn/components/roundedPasswordField.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SignUp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
                hintText: 'Your Email',
                icon: Icons.person,
                onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: 'SIGNUP',
              pressed: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            HaveAnAccountTip(
              login: false,
              tap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            TextDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  tap: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  tap: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  tap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
