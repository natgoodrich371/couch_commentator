import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/screens/couch_newgame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';
import 'dart:math';

class HomeLineup extends StatefulWidget {
  const HomeLineup({Key? key}) : super(key: key);

  @override
  _HomeLineupState createState() => _HomeLineupState();
}

class _HomeLineupState extends State<HomeLineup> {
  //List<String> homeLineup = List.empty(growable: true);
  final lineup0 = TextEditingController();
  final lineup1 = TextEditingController();
  final lineup2 = TextEditingController();
  final lineup3 = TextEditingController();
  final lineup4 = TextEditingController();
  final lineup5 = TextEditingController();
  final lineup6 = TextEditingController();
  final lineup7 = TextEditingController();
  final lineup8 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,//use this
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Home Lineup'),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 1',
                      ),
                    controller: lineup0,
                  ),
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 2'
                      ),
                    controller: lineup1,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 3'
                      ),
                    controller: lineup2,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 4'
                      ),
                    controller: lineup3,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 5'
                      ),
                    controller: lineup4,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 6'
                      ),
                    controller: lineup5,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 7'
                      ),
                    controller: lineup6,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 8'
                      ),
                    controller: lineup7,
                  )
              ),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 9'
                      ),
                    controller: lineup8,
                  )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewGame()),
                  );
                  homeLineup.clear();
                  homeLineup.add("Choose");
                  homeLineup.add(lineup0.text);
                  homeLineup.add(lineup1.text);
                  homeLineup.add(lineup2.text);
                  homeLineup.add(lineup3.text);
                  homeLineup.add(lineup4.text);
                  homeLineup.add(lineup5.text);
                  homeLineup.add(lineup6.text);
                  homeLineup.add(lineup7.text);
                  homeLineup.add(lineup8.text);
                  print(homeLineup);
                },
                child: const Text('Save'),
              ),
            ],
          ),
        )
    );
  }
}