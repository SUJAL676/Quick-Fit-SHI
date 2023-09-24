import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newidea/checker.dart';
import 'package:newidea/screens/Login_Page.dart';
import 'package:newidea/screens/Signup_Page.dart';

class Splash_page extends StatefulWidget {
  const Splash_page({super.key});

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Checker_screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 100),
            child: Image.asset("asset/QuickFit.png")),
      ),
    );
  }
}
