import 'package:flutter/cupertino.dart';
import 'package:zivi/utils.dart';

class AppItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final String url;

  AppItem(this.title, this.icon, {this.url});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          launchURL(url);
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
