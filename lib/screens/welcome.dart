
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // backgroundColor: Color(0xFFCED7e2),
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCED7e2), Color(0xFFFFFFFF)]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.sort,
                      size: 40.0,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    // Text("LOGO"),
                  ],
                ),
              ),
              // Image: Image.asset("images/find.png"),
              Expanded(
                flex: 5,
                child: Image.asset('images/real.png'),
              ),
              Expanded(
                child: Text(
                  "Find all your lost documents \n and more here!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Satisfy",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                  child: Text(
                    "Hundred of lost documents found everyday!. You've found one But how do youreturn them to owner.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.blue,
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ButtonTheme(
                      minWidth: 300,
                      height: 50.0,
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          "Get Started!",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onPressed: () {},
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
