import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final double balance;
  final String acc;
  final color;
  const card(
      {required this.balance,
      required this.acc,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 325,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              " Current Balance",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "\ Rs. $balance",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Add Cash",
                      style: TextStyle(color: Color.fromARGB(255, 42, 80, 130)),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0))))
              ],
            ),
            Text(
              acc,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
