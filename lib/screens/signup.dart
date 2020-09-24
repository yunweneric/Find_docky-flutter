import 'package:find_docky/screens/widgets/curve_clipper.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              Center(
                child: Text(
                  "FIND-DOKI",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      hintText: "Email",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.blue,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      hintText: "Username",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    hintText: "Phone Number",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 80.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  child: Text("Sign up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 70,
                      color: Colors.blue,
                      child: Text(
                        "Already have and account? Login",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
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
