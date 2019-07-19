import 'package:flutter/cupertino.dart';

class AppItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final String type;

  AppItem(this.title, this.icon, {this.type = 'url'});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      child: GestureDetector(
        onTap: () {
          if (type == 'url') {}
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            icon,
            Text(title),
          ],
        ),
      ),
    );
  }
}
