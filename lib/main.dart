// import 'package:find_docky/screens/find.dart';
// import 'package:find_docky/screens/find.dart';
import 'package:find_docky/screens/home_screen.dart';
import 'package:find_docky/screens/login.dart';
import 'package:find_docky/screens/signup.dart';
import 'package:find_docky/screens/welcome.dart';
import 'package:find_docky/screens/welcome2.dart';
import 'package:find_docky/screens/welcome3.dart';
import 'package:flutter/material.dart';

// import 'screens/welcome.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(value),
        primaryColor: Color(0xFFF3F6FC),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: FindState()
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/second": (context) => SecondWelcome(),
        "/third": (context) => ThirdWelcome(),
        "/signup": (context) => SignUp(),
        "/login": (context) => LogIn(),
        "/home" : (context) => HomeScreen(),
      },
    );
  }
}
