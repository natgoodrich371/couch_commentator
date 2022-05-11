import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/screens/couch_gamescreen.dart';
import 'package:couch_commentator/screens/couch_homelineup.dart';
import 'package:couch_commentator/screens/couch_vislineup.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';
import 'dart:math';

class NewGame extends StatefulWidget {
  const NewGame({Key? key}) : super(key: key);

  @override
  _NewGameState createState() => _NewGameState();
}
class _NewGameState extends State<NewGame> {
  //TextEditingController gameDate = TextEditingController();
  static DateTime now = DateTime.now();
  DateTime date = new DateTime(now.year);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Game"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Date/Title",
              style: TextStyle(
                  fontSize: 28
              ),
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Game Title",
              ),
              controller: gameName,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 25,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisLineup()),
                      );
                    },
                    child: const Text('Visitor'),
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeLineup()),
                      );
                    },
                    child: const Text('Home'),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 25),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  child: const Text('Go Back'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 25),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    if (homeLineup.isEmpty || visLineup.isEmpty) {
                      print(homeLineup),
                      print(visLineup),
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Error"),
                            content: Text("Lineup has not been filled out."),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: Text('OK'),
                              )
                            ],
                          );
                       })
                  }
                    else {
                    gameTitles.add(gameName.text.toString()),
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameScreen()),
                      )
                    }
                  },
                  child: const Text('Next'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}