// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../constants/colors.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController controller = TextEditingController();
  String _selectedItem = 'Select type of request';

  Future<void> _showForm(BuildContext context, int? itemKey) async {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        elevation: 5,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  top: 15,
                  left: 15,
                  right: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedItem = 'Make a formal complaint';
                      });
                      Navigator.pop(context);
                    },
                    title: Center(child: Text('Make a formal complaint')),
                    titleAlignment: ListTileTitleAlignment.center,
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedItem = 'Feedback';
                      });
                      Navigator.pop(context);
                    },
                    title: Center(child: Text('Feedback')),
                    titleAlignment: ListTileTitleAlignment.center,
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedItem = 'Give us a rating';
                      });
                      Navigator.pop(context);
                    },
                    title: Center(child: Text('Give us a rating')),
                    titleAlignment: ListTileTitleAlignment.center,
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedItem = 'Incorrect point location';
                      });
                      Navigator.pop(context);
                    },
                    title: Center(child: Text('Incorrect point location')),
                    titleAlignment: ListTileTitleAlignment.center,
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedItem = 'Other';
                      });
                      Navigator.pop(context);
                    },
                    title: Center(child: Text('Other')),
                    titleAlignment: ListTileTitleAlignment.center,
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
            ));
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            surfaceTintColor: Colors.white,
            scrollable: true,
            insetPadding: EdgeInsets.symmetric(vertical: 180),
            backgroundColor: Colors.white,
            title: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.black38,
                  )),
            ),
            content: Column(
              children: [
                Image.asset(
                  'assets/undraw_Mailbox_re_dvds.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Message sent successfully',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We will reply you as soon as possible.',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
                ),
                Text(
                  'Thank you for the understanding.',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
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
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      'Got it',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: backgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('BinBuddy'),
        ),
        titleTextStyle: TextStyle(
            color: buttonColor, fontWeight: FontWeight.bold, fontSize: 40),
        titleSpacing: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                'Contact us',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 380,
                child: Material(
                  elevation: 10,
                  child: ListTile(
                    onTap: () {
                      _showForm(context, null);
                    },
                    tileColor: Colors.white,
                    title: Text(
                      _selectedItem,
                      style: TextStyle(
                        color: buttonColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: buttonColor,
                      size: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 380,
                height: 250,
                child: Material(
                  elevation: 5.0,
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Type message",
                        hintStyle: TextStyle(
                            color: buttonColor, fontWeight: FontWeight.normal)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                width: 380,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    shadowColor: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                    _showDialog();
                  },
                  child: Text(
                    'Send Request',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
