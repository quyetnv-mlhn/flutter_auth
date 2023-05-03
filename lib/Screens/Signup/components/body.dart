import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_check.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
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
            Text('SIGNUP', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset('assets/icons/signup.svg', height: size.height * 0.35),
            RoundedInputField(hintText: 'Your email', icon: Icons.person, onChanged: (value) {}),
            RoundedInputPassword(onChanged: (value) {}),
            RoundedButton(text: 'SIGNUP', press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(iconSrc: 'assets/icons/facebook.svg', press: () {}),
                SocialIcon(iconSrc: 'assets/icons/twitter.svg', press: () {}),
                SocialIcon(iconSrc: 'assets/icons/google-plus.svg', press: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
