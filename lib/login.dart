import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mylogin/welcome.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'E-Wallet App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 42, 80, 130),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/login.png",
              width: 150,
              height: 150,
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "E-Wallet",
              style: TextStyle(
                  color: Color.fromARGB(255, 42, 80, 130),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
              controller: emailController,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
              obscureText: true,
              obscuringCharacter: '*',
              controller: passwordController,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                    color: Color.fromARGB(255, 42, 80, 130),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 70,
              ),
              Ink(
                decoration: const ShapeDecoration(
                  color: Color.fromARGB(255, 42, 80, 130),
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: Colors.white,
                  onPressed: login,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Forgot your password?",
                style: TextStyle(
                    color: Color.fromARGB(255, 42, 80, 130), fontSize: 17),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Color.fromARGB(255, 42, 80, 130), fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void login() {
    if (emailController.text == 'ahmadmuhammad@gmail.com' &&
        passwordController.text == 'ahmad321') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const welcome()),
      );
    } else {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Text('Invalid Credentials!'),
                content: Text('Username or Password is wrong, try again!'),
              ));
    }
  }
}
