// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class PaymentHistoryPage extends StatelessWidget {
  const PaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: buttonColor,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Text(
          '| Payments History',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
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
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text(
                              'PickUp 1',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                    child: Text(
                                  'napravisisam.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    120,
                                  ),
                                  bottomRight: Radius.elliptical(180, 80)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/cedi.png',
                                    scale: 10,
                                    color: buttonColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text(
                              '29 May 2023, 15:30',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )),
                        Spacer(),
                        Text('More info'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text(
                              'PickUp 2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                    child: Text(
                                  'napravisisam.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    120,
                                  ),
                                  bottomRight: Radius.elliptical(180, 80)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/cedi.png',
                                    scale: 10,
                                    color: buttonColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text(
                              '30 May 2023, 15:30',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )),
                        Spacer(),
                        Text('More info'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text(
                              'PickUp 3',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                    child: Text(
                                  'napravisisam.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    120,
                                  ),
                                  bottomRight: Radius.elliptical(180, 80)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    'assets/cedi.png',
                                    scale: 10,
                                    color: buttonColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '40',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Text(
                              '31 May 2023, 15:30',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )),
                        Spacer(),
                        Text('More info'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
