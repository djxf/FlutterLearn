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
  /// CrossAxisAlignment：
  ///     start: 交叉轴起始位置对齐
  ///     end: 结束位置对齐
  ///     center: 中心点对齐
  ///     baseline:文字基线对齐
  ///     stretch: 将所有子widget交叉轴的高度，拉伸到最大。
  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: Container(width: 10, height: 220, color: Colors.red),
                fit: FlexFit.tight,
                flex: 1,
            ),
            Flexible(
                child: Container(width: 120, height: 200, color: Colors.blue),
                fit: FlexFit.tight,
                flex: 2,
            ),
            Container(width: 130, height: 170, color: Colors.green),
          ],
      ),
    );
  }
}
/// Expanded
/// Flex
/// Stack: 重叠布局，类似Android的FrameLayout。