import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/my_globals.dart';
import 'package:couch_commentator/screens/couch_homelineup.dart';
import 'package:couch_commentator/screens/couch_newplay.dart';
import 'package:couch_commentator/screens/couch_savescreen.dart';
import 'package:couch_commentator/screens/couch_vislineup.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';
import 'dart:math';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}
class _GameScreenState extends State<GameScreen> {
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
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (i >= 1) {
                          position += 1;
                          i = 0;
                          half = topOrBot[i];
                        }
                        else {
                          i = i + 1;
                          half = topOrBot[i];
                        }
                        if (homeScore == visScore) {
                          if (position > 11) {
                            position = 11;
                          }
                        }
                        else if (position > 8){
                          position = 8;
                        }
                        textInnings = innings[position];
                      });

                    }, child: const Text ('Up'),
                  ),
                  Text(
                    '$half $textInnings Inning',
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        position -= 1;
                        if (i <= 0) {
                          position -= 1;
                          i = 1;
                          half = topOrBot[i];
                        }
                        else {
                          i = i - 1;
                          half = topOrBot[i];
                        }
                        if (position < 0) {
                          position = 0;
                        }
                        textInnings = innings[position];
                      });

                    }, child: const Text ('Down'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        homeScore += 1;
                      });

                    }, child: const Text ('Up'),
                  ),
                  Spacer(),
                  Text(
                    'H',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        homeScore -= 1;
                        if (homeScore < 0) {
                          homeScore = 0;
                        }
                      });

                    }, child: const Text ('Down'),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        visScore += 1;
                      });

                    }, child: const Text ('Up'),
                  ),
                  Spacer(),
                  Text(
                    'V',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        visScore -= 1;
                        if (visScore < 0) {
                          visScore = 0;
                        }
                      });

                    }, child: const Text ('Down'),
                  ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        outs += 1;
                        if (outs > 2) {
                          outs = 0;
                          if (i >= 1) {
                            position += 1;
                            i = 0;
                            half = topOrBot[i];
                          }
                          else {
                            i = i + 1;
                            half = topOrBot[i];
                          }
                          if (homeScore == visScore) {
                            if (position > 11) {
                              position = 11;
                            }
                          }
                          else if (position > 8){
                            position = 8;
                          }
                          textInnings = innings[position];
                        }
                      });

                    }, child: const Text ('Up'),
                  ),
                  Text(
                    '$outs Outs',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        outs -= 1;
                        if (outs < 0) {
                          outs = 2;
                          if (i <= 0) {
                            position -= 1;
                            i = 1;
                            half = topOrBot[i];
                          }
                          else {
                            i = i - 1;
                            half = topOrBot[i];
                          }
                          if (position < 0) {
                            position = 0;
                          }
                        }
                        textInnings = innings[position];
                      });

                    }, child: const Text ('Down'),
                  )
                ],
              ),
              Image.asset('assets/images/field.png'),
              /*Row(
                children: [
                  Container(
                      height: 150,
                      width: 100,
                      child: Image.asset('assets/images/field.png',
                          fit: BoxFit.contain
                      )
                  ),
                ]
              ),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPlay()),
                      );
                    },
                    child: const Text('New Play'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: const Text('Plays'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SaveScreen()),
                      );
                    },
                    child: const Text('End'),
                  ),
                ],
              )
            ]
        )
      ),
    );
  }
}