// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../payment/payment_checkout.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 50)),
          Text(
            'Select Momo-Provider:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 120,
            child: RadioListTile<PaymentMethod>(
              title: Image.asset(
                'assets/mtn.png',
                scale: 2,
              ),
              value: PaymentMethod.one,
              groupValue: _character,
              onChanged: (PaymentMethod? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 120,
            child: RadioListTile<PaymentMethod>(
              title: Image.asset(
                'assets/voda.png',
                scale: 2,
              ),
              value: PaymentMethod.two,
              groupValue: _character,
              onChanged: (PaymentMethod? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 120,
            child: RadioListTile<PaymentMethod>(
              title: Image.asset(
                'assets/airtel.png',
                scale: 2,
              ),
              value: PaymentMethod.three,
              groupValue: _character,
              onChanged: (PaymentMethod? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                shadowColor: Colors.white,
              ),
              onPressed: () {
                //Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutScreen()));
              },
              child: Text(
                'Proceed to checkout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

enum PaymentMethod { one, two, three }

PaymentMethod? _character = PaymentMethod.one;
