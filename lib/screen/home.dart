import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/config.dart';

final _bottomBarItems = Config.tabs.map((tab) {
  return BottomNavigationBarItem(icon: tab['icon'], title: Text(tab['title']));
}).toList();

class Home extends StatelessWidget {
  CupertinoTabController _tabController = CupertinoTabController(
    initialIndex: 0,
  );
  @override
  Widget build(BuildContext buildContext) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _bottomBarItems,
      ),
      controller: _tabController,
      tabBuilder: (BuildContext ctx, int i) {
        return CupertinoTabView(
          builder: (BuildContext ctx) {
            var item = Config.tabs[i];
            var widgetBuilder = item['widget'];
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(item['title']),
              ),
              child: Container(
                child: widgetBuilder(ctx),
              ),
            );
          },
        );
      },
    );
  }
}
