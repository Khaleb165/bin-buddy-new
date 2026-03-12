// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../constants/colors.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  List newsList = [];

  Future getNews() async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=waste%20management&apiKey=f710573e5afe41f791de32402fffcd3a'));
    var jsonData = jsonDecode(response.body);
    setState(() {
      newsList = jsonData['articles'];
    });
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: screenBackgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bins.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 100,
                        color: Color.fromRGBO(102, 116, 131, 1),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.access_time_filled,
                            size: 15,
                            color: Colors.white,
                          ),
                          label: Text(
                            '8 hours',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Newest',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(child: Divider(color: Colors.black)),
                SizedBox(width: 30),
                Container(
                  color: buttonColor,
                  child: IconButton(
                    highlightColor: Colors.white,
                    color: buttonColor,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/list.png',
                      color: Colors.white,
                      scale: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Flexible(
            fit: FlexFit.loose,
            child: ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: newsList[index]['urlToImage'] != null
                            ? Image.network(newsList[index]['urlToImage'])
                            : SizedBox.shrink(),
                        title: Text(
                          newsList[index]['title'],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          newsList[index]['description'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
