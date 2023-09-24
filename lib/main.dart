import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newidea/Navigator.dart';
import 'package:newidea/screens/home%20page.dart';
import 'package:newidea/second%20screen.dart';
import 'package:newidea/splash_page.dart';

Future main() async{


  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb)
    {
      Firebase.initializeApp(
        options: FirebaseOptions(apiKey: "AIzaSyDW8xpLn0v2b17Hz2MTAltyypAMzZX4mi4",
            authDomain: "quick-fit-fb4ea.firebaseapp.com",
            projectId: "quick-fit-fb4ea",
            storageBucket: "quick-fit-fb4ea.appspot.com",
            messagingSenderId: "305195148777",
            appId: "1:305195148777:web:20f567dc850b1655291778")
      );
    }

  else{
    await Firebase.initializeApp();
  }
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
      home: Splash_page()
    );
  }
}

