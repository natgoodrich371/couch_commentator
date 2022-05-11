import 'package:couch_commentator/main.dart';
import 'package:couch_commentator/my_globals.dart';
import 'package:couch_commentator/screens/couch_gamescreen.dart';
import 'package:couch_commentator/screens/couch_homelineup.dart';
import 'package:couch_commentator/screens/couch_vislineup.dart';
import 'package:flutter/material.dart';
import 'package:couch_commentator/my_globals.dart';
import 'dart:math';

class NewPlay extends StatefulWidget {
  const NewPlay({Key? key}) : super(key: key);
  @override
  _NewPlayState createState() => _NewPlayState();
}

class NewPlays {
  String topOrBot = "";
  String inning = "";
  String outs = "";
  String player = "";
  TextEditingController description = TextEditingController();

  NewPlays.add(String topOrBot, String inning, int outs, String name, TextEditingController descrip) {
    this.topOrBot = topOrBot;
    this.inning = inning;
    this.outs = outs.toString() + " outs";
    this.player = name;
    this.description = descrip;
    print(this.player + ", " + this.description.text);
    plays.add([this.topOrBot, this.inning, this.outs, this.player, this.description.text]);
    print(plays);
  }
}
class _NewPlayState extends State<NewPlay> {
  TextEditingController gameDate = TextEditingController();
  static DateTime now = DateTime.now();
  DateTime date = new DateTime(now.year);
  var choice = "visitor";
  var items = ["Choose"];
  var playDescription = TextEditingController();
  var record = TextEditingController();
  String dropdownvalue = 'Choose';

  // List of items in our dropdown menu
  @override
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Play"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        choice = "visitor";
                        items = visLineup;
                        dropdownvalue = 'Choose';
                      });
                    },
                    child: const Text('V'),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        choice = "home";
                        items = homeLineup;
                        dropdownvalue = 'Choose';
                      });
                    },
                    child: const Text('H'),
                  ),
                  Spacer(),
                ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Player: ',
                      style: TextStyle(fontSize: 25),
                    ),
                    DropdownButton<String>(
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    //padding: EdgeInsets.symmetric(horizontal: 4),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Play Description'
                        ),
                        controller: playDescription,
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    //padding: EdgeInsets.symmetric(horizontal: 4),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Record'
                        ),
                        controller: record,
                      )
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('Record'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameScreen()),
                      );
                    },
                    child: const Text('Discard'),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      if (dropdownvalue == "Choose") {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Error"),
                                content: Text("Please choose a player."),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: Text('OK'),
                                  )
                                ],
                              );
                            },
                        );
                      }
                      else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameScreen()),
                        );
                        NewPlays p = new NewPlays.add(half, innings[i].toString(), outs, dropdownvalue, playDescription);
                        print(plays.length);
                        print(plays);
                      }
                    },
                    child: const Text('Save'),
                  ),
                  Spacer()
                ],
              )
            ]
        )
      ),
    );
  }
}