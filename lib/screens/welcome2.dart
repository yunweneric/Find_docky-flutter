import 'package:flutter/material.dart';

class SecondWelcome extends StatefulWidget {
  @override
  _SecondWelcomeState createState() => _SecondWelcomeState();
}

class _SecondWelcomeState extends State<SecondWelcome> {
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
              SizedBox(
                height: 20,
              ),
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
                    Text(
                      "How does it works?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26.0,
                        fontFamily: "Lato",
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(
                        "Looking For your document?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: "Satisfy",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Create an account by signing up for free, login and upload any missing document you have stumbled on",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
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
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/third");
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
