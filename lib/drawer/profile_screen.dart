// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1),
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      200,
                    ),
                    bottomRight: Radius.circular(200)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.clear,
                            size: 40,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Image.asset(
                      'assets/Icon awesome-user-alt.png',
                      scale: 2,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Aballey Wilson',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Text(
                    'New York, NY',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  'Name',
                  style: TextStyle(fontSize: 13, color: Colors.black38),
                ),
                subtitle: Text(
                  'Aballey Wilson',
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: buttonColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  'Username',
                  style: TextStyle(fontSize: 13, color: Colors.black38),
                ),
                subtitle: Text(
                  'willy_wallet',
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: buttonColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  'E-mail',
                  style: TextStyle(fontSize: 13, color: Colors.black38),
                ),
                subtitle: Text(
                  'willywallet001@gmail.com',
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: buttonColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  'Bio',
                  style: TextStyle(fontSize: 13, color: Colors.black38),
                ),
                subtitle: Text(
                  'I am all that!',
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: buttonColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: Divider(
                color: Colors.black12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(
                  Icons.nightlight_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(
                  'Dark mode',
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Switch.adaptive(
                    activeColor: buttonColor,
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value;
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  side: BorderSide(
                    color: buttonColor,
                  ),
                  shadowColor: Colors.white,
                ),
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Text(
                  'Change password',
                  style: TextStyle(
                    color: buttonColor,
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
