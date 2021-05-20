

import 'dart:math';

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
      scrollDirection: Axis.vertical,
      itemExtent: 100,//指明item的高度
      children:
        List.generate(10000, (index) {
          return ListTile(
            leading: Icon(Icons.account_box_sharp),
            trailing: Icon(Icons.delete),
            title: Text("联系人$index"),
            subtitle: Text("联系人电话号码:18888888888"),
          );
        }),
    );
  }
}

class MyListViewLayout2 extends StatelessWidget {
  const MyListViewLayout2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
            return Text("Hello Flutter!");
        });
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4
          ),
          children: List.generate(255, (index) {
              return Container(
                color: Color.fromARGB(255, (index * 2), Random().nextInt(255), 0),
              );
          }),
      ),
    );
  }
}

class MyGridView2 extends StatelessWidget {
  const MyGridView2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,//最extent
            crossAxisSpacing: 4,
            mainAxisSpacing: 4
        ),
        children: List.generate(255, (index) {
          return Container(
            color: Color.fromARGB(255, (index * 2), Random().nextInt(255), 0),
          );
        }),
      ),
    );
  }
}
