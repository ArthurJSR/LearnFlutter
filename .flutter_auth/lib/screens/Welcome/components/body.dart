import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
<<<<<<< HEAD
<<<<<<< HEAD
=======
import 'package:flutter_auth/screens/Login/login_screen.dart';
>>>>>>> 55c07b7499d89908fa27bfcaf0f97e4a377600bd
=======
import 'package:flutter_auth/screens/Login/login_screen.dart';
>>>>>>> 55c07b7499d89908fa27bfcaf0f97e4a377600bd
import 'package:flutter_auth/screens/Welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_auth/components/roundedButton.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO EDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButtom(
              text: 'LOGIN',
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButtom(
              text: 'LOGIN',
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
