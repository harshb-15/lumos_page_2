import 'package:flutter/material.dart';

class PersonInfo {
  String name;
  int answers;
  int points;
  Map qinfo;
  PersonInfo(
      {@required this.name,
      @required this.points,
      @required this.answers,
      @required this.qinfo});
}

int pointsCalc({@required Map mp}) {
  int ans = 0;
  for (var i = 1; i <= mp.length; i++) {
    ans += mp[i]["points"];
  }
  return ans;
}
