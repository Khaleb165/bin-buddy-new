import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              decoration: BoxDecoration(
                color: buttonColor,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'BinBuddy\n',
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    TextSpan(
                      text: 'think for nature',
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Login in your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const CustomTextfield(
              keyboardType: TextInputType.emailAddress,
              hintText: 'Email',
              prefixIcon: Icon(Icons.email_outlined),
              isPassword: false,
            ),
            CustomTextfield(
              keyboardType: TextInputType.text,
              hintText: 'Password',
              prefixIcon: const Icon(Icons.lock_outline_sharp),
              isPassword: true,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                icon: hide
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {},
              child: const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Forget password ?',
                    textAlign: TextAlign.right,
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Login',
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: const Row(
                children: [
                  Expanded(child: Divider(color: Colors.black)),
                  SizedBox(width: 4),
                  Text(
                    ' or connect with ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 4),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
            ),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              children: [
                _socialLoginButton(
                  'Google',
                  Image.asset(
                    'assets/google.png',
                    scale: 5,
                  ),
                ),
                _socialLoginButton(
                  'Apple',
                  const Icon(
                    Icons.apple,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                _socialLoginButton(
                  'Twitter',
                  Image.asset(
                    'assets/twitter1.png',
                    scale: 5,
                  ),
                ),
                _socialLoginButton(
                  'Facebook',
                  const Icon(
                    Icons.facebook,
                    color: CupertinoColors.systemBlue,
                    size: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _socialLoginButton(String labelText, Widget icon) {
    return Container(
      height: 50,
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          shadowColor: Colors.white,
        ),
        onPressed: () {},
        icon: icon,
        label: Text(
          labelText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
