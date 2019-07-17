import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/const.dart';
import 'package:zivi/ui/app_bar.dart';
import 'package:zivi/ui/app_bar.dart' as zivi;
import 'package:zivi/ui/app_item.dart';
// import 'package:provider/provider.dart';

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: zivi.AppBar(),
      body: Container(
        padding: gutters['all'],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                AppItem('hello', Icon(Icons.access_alarm)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
                AppItem('hello', Icon(Icons.pause)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
