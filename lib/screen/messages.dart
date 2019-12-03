import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/config.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Center(
      child: CupertinoButton(
        child: const Text('Hello'),
        onPressed: () {
          showCupertinoDialog(
            context: buildContext,
            builder: (buildContext) {
              return CupertinoAlertDialog(
                title: Text('Alert'),
                content: Text('Hello from zivi!'),
                actions: <Widget>[
                  new CupertinoDialogAction(
                    child: new Text('取消'),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.of(buildContext).pop();
                    },
                  ),
                  new CupertinoDialogAction(
                    child: new Text('hi'),
                    // isDestructiveAction: true,
                    onPressed: () {
                      Navigator.of(buildContext).pop();
                    },
                  ),
                  new CupertinoDialogAction(
                    child: new Text('确定'),
                    // isDestructiveAction: true,
                    onPressed: () {
                      Navigator.of(buildContext).pop();
                    },
                  ),
                ],
              );
            }
          );
        },
      ),
    );
  }
}
