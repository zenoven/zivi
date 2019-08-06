import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zivi/utils.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';

class AppItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final String url;

  AppItem(this.title, this.iconPath, {this.url});

  dynamic getIcon(String imageFilePath, {double width = 64.0, double height = 64.0}) {
    bool isSvg = extension(imageFilePath) == '.svg';
    if (isSvg) {
      return SvgPicture.asset(
        imageFilePath,
        width: width,
        height: height,
      );
    }
    return Image.asset(
      imageFilePath,
      width: width,
      height: height,
    );
  }

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
            ClipRRect(

              child: getIcon(iconPath),
              borderRadius: BorderRadius.circular(5.0),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
