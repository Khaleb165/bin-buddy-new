import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
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
              height: 180,
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
              'Become part of the future',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const CustomTextfield(
              keyboardType: TextInputType.name,
              hintText: 'First Name',
              prefixIcon: Icon(Icons.person_outline_outlined),
              isPassword: false,
            ),
            const CustomTextfield(
              keyboardType: TextInputType.name,
              hintText: 'Last Name',
              prefixIcon: Icon(Icons.person_outline_outlined),
              isPassword: false,
            ),
            const CustomTextfield(
              keyboardType: TextInputType.emailAddress,
              hintText: 'E-mail',
              prefixIcon: Icon(Icons.email_outlined),
              isPassword: false,
            ),
            const CustomTextfield(
              keyboardType: TextInputType.number,
              hintText: 'Phone',
              prefixIcon: Icon(Icons.phone_android),
              isPassword: false,
            ),
            const CustomTextfield(
              keyboardType: TextInputType.text,
              hintText: 'Digital Address',
              prefixIcon: Icon(Icons.pin_drop),
              isPassword: false,
            ),
            CustomTextfield(
              keyboardType: TextInputType.visiblePassword,
              hintText: 'Enter password',
              prefixIcon: const Icon(Icons.lock_outline_sharp),
              isPassword: true,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                icon:
                    hide ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                color: Colors.black54,
              ),
            ),
            CustomTextfield(
              keyboardType: TextInputType.visiblePassword,
              hintText: 'Confirm password',
              prefixIcon: const Icon(Icons.lock_outline_sharp),
              isPassword: true,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                icon:
                    hide ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Join the community',
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By creating an account, you agree to BinBuddy ",
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms of use',
                      style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: ' and',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' Privacy policy',
                      style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
