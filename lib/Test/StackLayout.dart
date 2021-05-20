import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 重叠布局
 * Stack默认的包裹内容的。
 *    aligment: 从什么位置开始排布所有的子Widget。
 *
 *
 * Positioned: 定位，调整子元素位置。
 *
 *
 */
class MyStackLayout extends StatelessWidget {
  const MyStackLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //fit: StackFit.expand,
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        Image.network(
            "http://wx2.sinaimg.cn/mw600/0089jzyPly1gqnkrabmppj30jg0isq4a.jpg"),
        Positioned(
          left: 10,
          bottom: 10,
          child: Row(mainAxisSize: MainAxisSize.max,
              children: [
            Text(
              "比尔盖茨和贝索斯",
              style: TextStyle(color: Colors.green),
            ),
            Positioned(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              right: 10,
              bottom: 10,
            )
          ]),
        ),
      ],
    );
  }
}
