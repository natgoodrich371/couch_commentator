import 'package:couch_commentator/screens/couch_history.dart';
import 'package:couch_commentator/screens/couch_howto.dart';
import 'package:couch_commentator/screens/couch_newgame.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Couch Commentator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                      'assets/images/Couch Commentator.png',
                      height: 400,
                      width: 400,
                      fit: BoxFit.fitWidth),
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CouchHistory()),
                    );
                  },
                  child: Text("History")
              ),
              Divider(
                indent: 10.0,
                endIndent: 10.0
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CouchHowTo()),
                    );
                  },
                  child: Text("How-To")
              ),
              ]
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewGame()),
                  );
                  half = "Top";
                  i = 0;
                  position = 0;
                  homeScore = 0;
                  visScore = 0;
                  outs = 0;
                  textInnings = "1st";
                  homeLineup = List.empty(growable: true);
                  visLineup = List.empty(growable: true);
                },
                child: Text("New Game")
            ),
          ],
        ),
      ),
    );
  }
}
