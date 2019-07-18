import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:zivi/screen/home.dart';
import 'package:zivi/screen/apps.dart';

typedef RouteBuilder = Widget Function(BuildContext buildContext);

abstract class Config {
  static final appName = 'zivi';
  static final appDesc = 'Daily app launcher written with Flutter and dart.';
  static final views = <Map<String, Map<String, dynamic>>>[
    {
      'home': {
        'widget': (BuildContext buildContext) => new Home(),
        'icon': Icon(Icons.home),
        'title': 'Messages',
      }
    },
    {
      'summary': {
        'widget': (BuildContext buildContext) => new Apps(),
        'icon': Icon(Icons.apps),
        'title': 'APPs',
      }
    },
    {
      'apps': {
        'widget': (BuildContext buildContext) => new Apps(),
        'icon': Icon(Icons.settings),
        'title': 'Settings',
      }
    },
  ];

  static Map<String, RouteBuilder> get routes {
    return views.fold({}, (combined, next) {
      String key = next.keys.toList()[0];
      combined[key] = next[key]['widget'];
      return combined;
    });
  }

  static List<Map<String, dynamic>> get tabs {
    return views.map((item) {
      String key = item.keys.toList()[0];
      return item[key];
    }).toList();
  }
}

abstract class Style {
  static final gutter = 20.0;
  static final gutters = {
    'all': EdgeInsets.all(gutter),
    'horizontal': EdgeInsets.fromLTRB(gutter, 0, gutter, 0),
    'vertical': EdgeInsets.fromLTRB(0, gutter, 0, gutter),
  };
}


