import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zivi/config.dart';
import 'package:zivi/ui/app_item.dart';
// import 'package:provider/provider.dart';

final wechat = [
  AppItem(
    '微信扫一扫',
    'assets/images/wechat.svg',
    url: 'weixin://scanqrcode',
  ),
];
final alipay = [
  AppItem(
    '付款码',
    'assets/images/alipay.svg',
    url: 'alipayqr://platformapi/startapp?saId=20000056',
  ),
  AppItem(
    '转账',
    'assets/images/alipay.svg',
    url: 'alipayqr://platformapi/startapp?saId=09999988',
  ),
  AppItem(
    '扫一扫',
    'assets/images/alipay.svg',
    url: 'alipayqr://platformapi/startapp?saId=10000007',
  ),
];
getFakeAppItems({count = 3}) {
  List<AppItem> items = [];
  items.addAll(wechat);
  items.addAll(alipay);
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
          mainAxisSpacing: Style.gutter,
          crossAxisSpacing: 0,
        ),
        children: getFakeAppItems(),
      ),
    );
  }
}
