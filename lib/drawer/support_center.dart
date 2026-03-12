// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SupportCenter extends StatefulWidget {
  const SupportCenter({super.key});

  @override
  State<SupportCenter> createState() => _SupportCenterState();
}

class _SupportCenterState extends State<SupportCenter> {
  String? _value1;

  final List<String> nameList = <String>[
    'Make a formal complaint',
    'Feedback',
    'Give us a rating',
    'Incorrect point location',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: buttonColor,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Text(
          '|  Support Center',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.clear,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'Search everything you need',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Material(
                  elevation: 3.0,
                  child: TextField(
                    readOnly: true,
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        icon: Container(
                          height: 50,
                          width: 50,
                          color: Colors.yellow[800],
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        suffixIcon: SizedBox(
                          height: 50,
                          width: 300,
                          child: DropdownButton(
                            elevation: 0,
                            hint: Text(
                              'Select type of request',
                            ),
                            isExpanded: true,
                            icon: Icon(Icons.arrow_forward_ios),
                            value: _value1,
                            onChanged: (value) {
                              setState(() {
                                _value1 = value;
                              });
                            },
                            items: nameList.map(
                              (item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "",
                        hintStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular articles',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5,
                child: SizedBox(
                  width: 360,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Extenuating Circumstances Policy and the coronavirus (COVID-19)',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        SizedBox(
                          height: 110,
                          width: 240,
                          child: Center(
                              child: Image.asset(
                            'assets/Mask Group 33.png',
                            scale: 2,
                          )),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'See more',
                                style: TextStyle(
                                    color: Colors.yellow[800],
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                height: 25,
                                width: 30,
                                color: Colors.yellow[800],
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5,
                child: SizedBox(
                  width: 360,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How do I reset or change my password?',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        SizedBox(
                          height: 110,
                          width: 240,
                          child: Center(
                              child: Image.asset(
                            'assets/undraw_forgot_password_gi2d.png',
                            scale: 2,
                          )),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'See more',
                                style: TextStyle(
                                    color: Colors.yellow[800],
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                height: 25,
                                width: 30,
                                color: Colors.yellow[800],
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 5,
                child: SizedBox(
                  width: 360,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How do I create an account?',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        SizedBox(
                          height: 110,
                          width: 240,
                          child: Center(
                              child: Image.asset(
                            'assets/Mask Group 34.png',
                            scale: 2,
                          )),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'See more',
                                style: TextStyle(
                                    color: Colors.yellow[800],
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                height: 25,
                                width: 30,
                                color: Colors.yellow[800],
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Choose the kind of help you need',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    InkWell(
                      onTap: () {},
                      child: Material(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 120.0,
                          width: 150.0,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 25)),
                                Icon(
                                  Icons.delete,
                                  color: buttonColor,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Recycling',
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 120.0,
                          width: 150.0,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 25)),
                                Icon(
                                  Icons.event_note_outlined,
                                  color: buttonColor,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Learn more',
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 120.0,
                          width: 150.0,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 25)),
                                Image.asset(
                                  'assets/Icon feather-map.png',
                                  scale: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mapping',
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Material(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 120.0,
                          width: 150.0,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 25)),
                                Icon(
                                  Icons.storefront_outlined,
                                  color: buttonColor,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Store',
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])),
              SizedBox(
                height: 30,
              ),
              Text(
                'About BinBuddy',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Getting started'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('How Wasty works'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Community standards'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Partnerships'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Your account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Creating an account'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Managing your account'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('ID and verification'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Reviews'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Terms & policies',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Terms of Service'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Payment Terms of Service'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Privacy Policy'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              ListTile(
                onTap: () {},
                shape: Border(
                  bottom: BorderSide(color: Colors.black38, width: 1),
                ),
                tileColor: Colors.white,
                title: Text('Privacy Policy for partnership'),
                titleTextStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Can't find your answer here ?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Contact our support team now",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: 370,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    shadowColor: Colors.white,
                  ),
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  child: Text(
                    'Contact support',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
