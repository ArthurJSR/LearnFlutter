import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/roundedButton.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/Login/login_screen.dart';
import 'package:flutter_auth/screens/Signup/components/background.dart';
import 'package:flutter_auth/screens/Signup/components/or_Divider.dart';
import 'package:flutter_auth/screens/Signup/components/social_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButtom(
              text: "SIGNUP",
              press: () {},
              color: kPrimaryColor,
              textColor: kPrimaryLightColor,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountcheck(
              login: true,
              press: () { },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  IconScr: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  press: () {},
                  IconScr: "assets/icons/twitter.svg",
                ),
                SocialIcon(
                  press: () {},
                  IconScr: "assets/icons/google-plus.svg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
