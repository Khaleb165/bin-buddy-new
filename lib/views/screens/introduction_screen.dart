// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../widgets/custom_button.dart';
import 'login_page.dart';
import 'signup_page.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/Group1.png',
                  ),
                  scale: 2,
                ),
                color: buttonColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.elliptical(370, 70),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70),
                    Text(
                      'Welcome to'.toUpperCase(),
                      style: TextStyle(
                        color: backgroundColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'BinBuddy',
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.8),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            CustomButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    side: BorderSide(
                      color: buttonColor,
                    ),
                    shadowColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: buttonColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
