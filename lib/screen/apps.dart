import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/const.dart';
import 'package:zivi/ui/app_item.dart';
// import 'package:provider/provider.dart';

getFakeAppItems({count = 50}) {
  List<AppItem> items = [];
  for (int i = 0; i < count; i++) {
    items.add(AppItem('App ${i+1}', Icon(Icons.linked_camera)));
  }
  return items;
}

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('zivi'),
      ),
      body: Container(
        padding: gutters['all'],
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: gutter * 1.5,
              crossAxisSpacing: gutter),
          children: getFakeAppItems(),
        ),
      ),
    );
  }
}
