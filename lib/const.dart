import 'package:flutter/rendering.dart';

final appConfig = {
  'name': 'zivi',
  'desc': 'Daily app launcher written with Flutter and dart.'
};
final gutter = 20.0;
final gutters = {
  'all': EdgeInsets.all(gutter),
  'horizontal': EdgeInsets.fromLTRB(gutter, 0, gutter, 0),
  'vertical': EdgeInsets.fromLTRB(0, gutter, 0, gutter),
};
