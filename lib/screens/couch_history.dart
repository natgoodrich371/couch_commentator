import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/my_globals.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CouchHistory extends StatefulWidget {
  const CouchHistory({Key? key}) : super(key: key);

  @override
  _CouchHistoryState createState() => _CouchHistoryState();
}

/*
void printList() {
  for (i = 0; i < allGames.length; i++) {
    for (j = 0; j < 5; j++) {
      print(allGames[i][j]);
    }
  }
}
*/
class _CouchHistoryState extends State<CouchHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("History"),
        ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Text(gameTitles[index].toString(),
                style: TextStyle(
                  color: Colors.black, fontSize: 15
                ),
            ),
            title:
              Text(allGames[index].toString()
            ),
          );
        },
      )
    );
    print(allGames);
  }
}