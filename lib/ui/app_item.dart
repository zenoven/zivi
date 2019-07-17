import 'package:flutter/cupertino.dart';

class AppItem extends StatelessWidget {
  final String title;
  final Icon icon;

  AppItem(this.title, this.icon);

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      // height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          icon,
          Text(title),
        ],
      ),
    );
  }
}