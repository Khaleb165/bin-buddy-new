// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../screens/home_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            surfaceTintColor: Colors.white,
            scrollable: true,
            // insetPadding: EdgeInsets.symmetric(vertical: 250),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Payment in Progress',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    icon: Icon(
                      Icons.cancel_outlined,
                      size: 30,
                      color: Colors.black38,
                    ))
              ],
            ),
            content: Column(
              children: [
                Divider(
                  color: Colors.black38,
                ),
                Text(
                    'Transaction Pending. Kindly dial *170#, select 6(Wallet), choose 3(My Approvals) and enter MM pin to approve payment immediately.')
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: buttonColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Text(
                    'BinBuddy',
                    style: TextStyle(
                        color: backgroundColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  Text(
                    'think for nature',
                    style: TextStyle(
                        color: backgroundColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.1),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(color: Colors.white60),
              child: Center(
                child: Text(
                  'checkout'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      color: buttonColor),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        const BorderSide(color: Colors.white10, width: 3.0),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  hintText: 'Contact Number',
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: Colors.white70,
                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        const BorderSide(color: Colors.white10, width: 3.0),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Email [Optional]',
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: Colors.white70,
                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        const BorderSide(color: Colors.white10, width: 3.0),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  prefixIcon: Icon(Icons.phone_android),
                  hintText: 'Mobile Money Number',
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: Colors.white70,
                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        const BorderSide(color: Colors.white10, width: 3.0),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  hintText: 'Amount (GHS)',
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  fillColor: Colors.white70,
                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  shadowColor: Colors.white,
                ),
                onPressed: _showDialog,
                child: Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pop(context);
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                'Cancel Payment',
                style: TextStyle(color: Colors.red[900]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
