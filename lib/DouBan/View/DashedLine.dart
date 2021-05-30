import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * 定制虚线View
 *
 *
 *
 *
 *
 */


class DashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  DashedLine({
      this.axis = Axis.horizontal,
      this.dashedWidth = 10,
      this.dashedHeight = 1,
      this.count = 20,
      this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        direction: axis,
        children: List.generate(count, (index) {
          return SizedBox(
            width: dashedWidth,
            height: dashedHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          );
        }),
    );
  }
}

///构造函数语法
///
class Test {
    String name1;

    // Test() {
    //   print("父类构造函数");
    // }
    Test(String s) : name1 = "lisi"{
      print("父类构造函数 $name1");
    }//默认构造函数已经定义的情况下，不能再定义函数构造函数。

    //命名构造函数
    Test.origin() {
      name1 = "zhangsan";
      print("我是命名构造函数");
    }
}

class SubTest extends Test {
  //子类的构造函数，必须要调用父类的构造函数。
  //1 显式调用父类的构造函数 2 Dart自动调用父类的无参构造函数。
  //初始化列表：
    SubTest() : super("cao") {
      print("子类构造函数 ${super.name1}");
    }
}

main(List<String> args) {
  //var t1 = Test();
  var t2 = SubTest();//
  var t3 = Test.origin();
}
