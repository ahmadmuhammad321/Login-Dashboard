import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final String path;
  final String buttonText;
  const mybutton({required this.buttonText, required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          child: Image.asset(path),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 30,
                  spreadRadius: 10,
                )
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
