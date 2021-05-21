
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
/// GridView extends BoxScrollView   buildChildLayout ===>  SliverGrid
/// ListView extends BoxScrollView,  buildChildLayout ===>  SliverGrid
/// 滚动监听 ====>
/// 

class MyCustomScrollView extends StatelessWidget {
  const MyCustomScrollView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
           SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Hello Flutter"),
                background: Image.network("http://wx3.sinaimg.cn/mw600/0089jzyPly1gqp4tgn5nxj30qo0qo41j.jpg"),
              ),
           ),
            SliverGrid(
                gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5,
                ),
                delegate : SliverChildBuilderDelegate(
                    (context, count) {
                      return Container(
                        color: Color.fromARGB(255, (count), Random().nextInt((count)), 0),
                      );
                    }
                )
            )
        ],
    );
  }
}

