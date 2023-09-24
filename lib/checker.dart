import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newidea/Navigator.dart';
import 'package:newidea/screens/Login_Page.dart';

class Checker_screen extends StatefulWidget {
  const Checker_screen({super.key});

  @override
  State<Checker_screen> createState() => _Checker_screenState();
}

class _Checker_screenState extends State<Checker_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot)
        {
          if(snapshot.connectionState== ConnectionState.active)
          {
            if(snapshot.hasData)
            {
              return Navigation_screen();
            }
            else if(snapshot.hasError)
            {
              return Center(child: Text("${snapshot.error}"),);
            }
          }
          if(snapshot.connectionState==ConnectionState.waiting)
          {
            return const Center(child: CircularProgressIndicator(
              color: Colors.white,
            ),);
          }
          return Login_Page();
        },
      ),
    );
  }
}
