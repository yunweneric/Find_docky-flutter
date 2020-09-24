import 'package:flutter/material.dart';
// import 'welcome.dart';

class FindState extends StatefulWidget {
  @override
  _FindStateState createState() => _FindStateState();
}

class _FindStateState extends State<FindState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SafeArea(
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
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: ButtonTheme(
                      minWidth: 300,
                      height: 50.0,
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          "Return!",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return MyHomePage();
                          //     },
                          //   ),
                          // );
                          // Navigator.pop(context);
                          Navigator.pushNamed(context, "/");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
