import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/config.dart';
import 'package:zivi/ui/app_item.dart';
// import 'package:provider/provider.dart';

getFakeAppItems({count = 3}) {
  List<AppItem> items = [];
  for (int i = 0; i < count; i++) {
    items.add(
      AppItem(
        'App ${i+1}',
        Icon(Icons.linked_camera),
        url: 'http://www.baidu.com',
      ),

    );
  }
  return items;
}

class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      padding: Style.gutters['all'],
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: Style.gutter * 1.5,
            crossAxisSpacing: Style.gutter),
        children: getFakeAppItems(),
      ),
    );
  }
}
