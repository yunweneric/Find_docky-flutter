import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("data"),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Icon(
        //       Icons.sort,
        //       size: 40.0,
        //       color: Colors.blue,
        //     ),
        //     Icon(
        //       Icons.account_circle,
        //       color: Colors.blue,
        //       size: 30.0,
        //     ),
        //     // Text("LOGO"),
        //   ],
        // ),
      ),
    );
  }
}
