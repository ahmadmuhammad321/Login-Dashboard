import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mylogin/buttons.dart';
import 'package:mylogin/cards.dart';
import 'package:mylogin/sidebar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  final pcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Color.fromARGB(255, 42, 80, 130),
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 42, 80, 130),
            ),
            iconSize: 32,
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 42, 80, 130),
            ),
            iconSize: 32,
          )
        ]),
      ),
      drawer: sidebar(),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 80, 130),
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "My Account",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 42, 80, 130)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 175,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pcontroller,
              children: [
                card(
                  balance: 23120,
                  acc: "Easypaisa",
                  color: Color.fromARGB(255, 44, 180, 95),
                ),
                card(
                  balance: 78799,
                  acc: "Jazzcash",
                  color: Color.fromARGB(255, 158, 35, 31),
                ),
                card(
                  balance: 11321,
                  acc: "Upaisa",
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SmoothPageIndicator(
            controller: pcontroller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mybutton(buttonText: "Send", path: "assets/sm.png"),
              mybutton(buttonText: "Transfer", path: "assets/bank.png"),
              mybutton(buttonText: "Bills", path: "assets/invoice.png"),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset("assets/analytics.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Statistics",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Payments and Income",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[800]),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset("assets/transfer.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transactions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Transaction History",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[800]),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
