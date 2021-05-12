

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
              centerTitle: true,
              title: Text("商品列表"),
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
          child: ListView(
              children: [
                MyProductItem("提醒饮茶小助手", "前天通宵改论文，凌晨三点多刚好刷到喝茶动态图，应景（是不是有人求图来着）", "http://wx1.sinaimg.cn/mw600/0089jzyPly1gqfvjoffxzj30k00kbdj5.jpg"),
                MyProductItem("返工兽", "我不想返工啊 屌", "http://wx2.sinaimg.cn/mw600/81f27092gy1gqfv5f9iqpj20go0dddgw.jpg"),
                MyProductItem("美国人", "实事评论", "http://wx4.sinaimg.cn/mw1024/0089jzyPgy1gqfuvdnjfpg30h207vnpj.gif"),
              ],
          )
      );
  }

}

class MyWidget extends StatelessWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyProductItem extends StatelessWidget {
  final String title;
  final String decs;
  final String imageUrl;

  MyProductItem(this.title, this.decs, this.imageUrl);
  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.black12
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red
                  ),
                )
              ]
            ),
            SizedBox(height: 8),
            Text(
              decs,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green
              ),
            ),
            SizedBox(height: 8,),
            Image.network(imageUrl)
          ],
        ),
      );
  }

}
