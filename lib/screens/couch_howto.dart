import 'package:couch_commentator/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CouchHowTo extends StatefulWidget {
  const CouchHowTo({Key? key}) : super(key: key);

  @override
  _CouchHowToState createState() => _CouchHowToState();
}

class _CouchHowToState extends State<CouchHowTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("How-To"),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Your Basic Scorekeeping App!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                  "No matter if you're at the park or on the couch, Couch Commentator will help you keep track of your game without any having had any prior experience!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                  "Give your game a name, input your lineup, keep track of your game",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20
                  )
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  child: const Text('Go Back '),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}