import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/my_globals.dart';
import 'package:couch_commentator/screens/couch_gamescreen.dart';
import 'package:couch_commentator/screens/couch_homelineup.dart';
import 'package:couch_commentator/screens/couch_newplay.dart';
import 'package:couch_commentator/screens/couch_vislineup.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';
import 'dart:math';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  _SaveScreenState createState() => _SaveScreenState();
}
class _SaveScreenState extends State<SaveScreen> {
  TextEditingController gameDate = TextEditingController();
  static DateTime now = DateTime.now();
  DateTime date = new DateTime(now.year);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gameName.text),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Save Game",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40
                    ),
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    'H',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  Spacer(),
                  Text(
                    'V',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$homeScore',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text (
                    '-',
                    style: TextStyle(fontSize: 50),
                  ),
                  Text (
                    '$visScore',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              //OUTS SECTIONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameScreen()),
                      );
                    },
                    child: const Text('Go Back'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                      allGames.add(plays);
                      halfList = [];
                      inningsList = [];
                      outsList = [];
                      playerList = [];
                      descripList = [];
                      for (int i = 0; i < plays.length; i++) {
                        halfList.add(allGames[0][0][i][0]);
                        inningsList.add(allGames[0][0][i][1]);
                        outsList.add(allGames[0][0][i][2]);
                        playerList.add(allGames[0][0][i][3]);
                        descripList.add(allGames[0][0][i][4]);
                      }
                    },
                    child: const Text('Save Game'),
                  ),
                ],
              )
            ]
        )
      ),
    );
  }
}