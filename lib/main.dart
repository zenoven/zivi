import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/const.dart';
import 'package:zivi/routes.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      title: appConfig['name'],
      home: routes['summary'](context),
      routes: routes,
    );
  }
}
