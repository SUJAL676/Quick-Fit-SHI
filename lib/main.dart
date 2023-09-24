import 'package:flutter/material.dart';
import 'package:newidea/Navigator.dart';
import 'package:newidea/screens/home%20page.dart';
import 'package:newidea/second%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigation_screen()
    );
  }
}
