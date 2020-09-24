import 'package:flutter/material.dart';

class ThirdWelcome extends StatefulWidget {
  @override
  _ThirdWelcomeState createState() => _ThirdWelcomeState();
}

class _ThirdWelcomeState extends State<ThirdWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),

              // Expanded(
              //   flex: 5,
              //   child: Image.asset('images/find.png'),
              // ),

              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "How does it work?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26.0,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
                        child: Text(
                          "Upload a Found document?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: "Satisfy",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "After logging in, visit your dashboard and add new details. Add the names, and any valuable information on the document",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )),
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
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
