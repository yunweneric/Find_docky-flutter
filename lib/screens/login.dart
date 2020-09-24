// import 'package:find_docky/screens/home_screen.dart';
import 'package:find_docky/screens/widgets/curve_clipper.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCED7e2), Color(0xFFFFFFFF)]),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Image.asset(
                  "images/sun.jpg",
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "FIND-DOKI",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.account_circle,
                        size: 30.0,
                        color: Colors.blue,
                      )),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => HomeScreen(),
                  //   ),
                  // );
                  Navigator.pushReplacementNamed(context, "/home");
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                    horizontal: 60.0,
                  ),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      height: 70.0,
                      child: Text(
                        "Don\'t have an account? Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
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
