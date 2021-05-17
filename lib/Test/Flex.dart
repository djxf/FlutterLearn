import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * Flex 布局
 *
 *
 *
 */

class MyFlexTest extends StatelessWidget {
  const MyFlexTest({Key key}) : super(key: key);

  /// mainAxisAlignment:
  ///    MainAxisAlignment.start: 主轴开始的位置挨个摆放位置。
  ///    MainAxisAlignment.end：主轴结束的位置挨个摆放位置。
  ///    MainAxisAlignment.center：主轴中心的位置挨个摆放位置。
  ///    MainAxisAlignment.spaceAround: 左右两边的间距是其他元素之间的间距的一半。
  ///    MainAxisAlignment.spaceBetween: 左右间距为0，其他元素之间平分。
  ///    MainAxisAlignment.spaceEvenly: 全部平分。
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 50, height: 220, color: Colors.red),
          Container(width: 120, height: 200, color: Colors.blue),
          Container(width: 130, height: 170, color: Colors.green),
        ],
    );
  }
}
