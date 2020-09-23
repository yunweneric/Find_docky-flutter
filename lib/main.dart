import 'package:flutter/material.dart';
import 'screens/welcome.dart';
// import 'find.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Color(value),
        primaryColor: Color(0xFFF3F6FC),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Find Docky!'),
      // initialRoute: We ,
      // routes: {
      //   "welcome_screen": (context) => ,
      // },
      // find: MyfindPage()
    );
  }
}
