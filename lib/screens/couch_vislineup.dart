import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/screens/couch_newgame.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';
import 'dart:math';

class VisLineup extends StatefulWidget {
  const VisLineup({Key? key}) : super(key: key);

  @override
  _VisLineupState createState() => _VisLineupState();
}

class _VisLineupState extends State<VisLineup> {
  //List<String> visLineup = List.empty(growable: true);
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
          title: Text("Visitor"),
        ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Visitor Lineup'),
              Expanded(
                //padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Position 1'
                      ),
                    controller: lineup0,
                  )
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
                  visLineup.clear();
                  visLineup.add("Choose");
                  visLineup.add(lineup0.text);
                  visLineup.add(lineup1.text);
                  visLineup.add(lineup2.text);
                  visLineup.add(lineup3.text);
                  visLineup.add(lineup4.text);
                  visLineup.add(lineup5.text);
                  visLineup.add(lineup6.text);
                  visLineup.add(lineup7.text);
                  visLineup.add(lineup8.text);
                  print(visLineup);
                },
                child: const Text('Save'),
              ),
            ],
        ),
      )
    );
  }
}

/*
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewGame()),
                  );
                },
                child: const Text('Go Back '),
              ),
            ),
          )*/