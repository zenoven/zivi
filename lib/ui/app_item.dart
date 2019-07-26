import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class AppItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final String url;

  AppItem(this.title, this.icon, {this.url});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      child: GestureDetector(
        onTap: () {
          _launchURL(url);
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
