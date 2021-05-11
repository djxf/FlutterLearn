

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
    //1. 调用一个函数runApp函数
  runApp(MyApp());
}

///
/// Widget：
/// 1 有状态Widget：StatefulWidget
/// 2 无状态Widget：StatelessWidget：内容确定，没有数据改变。
/// 3 Widget库
/// 4 组件化开发
///
///
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text("Hello Flutter2"),
            ),
            body: Body(),
          )
      );
  }
}

class Body extends StatefulWidget {

  //状态的概念
  //创建一个类这个类负责维护状态
  @override
  State<StatefulWidget> createState() {
      return BodyState();
  }
}

class BodyState extends State<Body> {

  var flag = true;
  @override
  Widget build(BuildContext context) {
      return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: flag, onChanged: (value) {
                  setState(() {
                      flag = value;
                  });
              }),
              Text(
                "同意协议",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ],
          )
      );
  }

}