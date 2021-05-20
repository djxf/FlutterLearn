

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 滚动区域问题：必须包裹滚动控件
 */


class MyListViewLayout extends StatelessWidget {
  const MyListViewLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 100,//指明item的高度
      children:
        List.generate(100, (index) {
          return ListTile(
            leading: Icon(Icons.account_box_sharp),
            trailing: Icon(Icons.delete),
            title: Text("联系人"),
            subtitle: Text("联系人电话号码:18888888888"),
          );
        }),
    );
  }
}
