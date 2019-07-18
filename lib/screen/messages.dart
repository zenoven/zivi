import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/config.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Padding(
      padding: Style.gutters['all'],
      child: Center(
        child: Text('Messages page'),
      ),
    );
  }
}
