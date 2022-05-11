library globals;

import 'package:flutter/cupertino.dart';
List<String> homeLineup = List.empty(growable: true);
List<String> visLineup = List.empty(growable: true);
List<String> gameTitles = List.empty(growable: true);
final gameDate = TextEditingController();
List<List> plays = List.empty(growable: true);
var gameName = TextEditingController();
var half = "Top";
var i = 0;
var position = 0;
var homeScore = 0;
var visScore = 0;
var outs = 0;
var textInnings = "1st";
var innings = ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th", "9th", "10th", "11th", "12th"];
var topOrBot = ['Top', 'Bot'];

var halfList = [];
var inningsList = [];
var outsList = [];
var playerList = [];
var descripList = [];

List<List<List>> allGames = List.empty(growable: true);