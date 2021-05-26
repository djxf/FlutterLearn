import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *
 * 评分组件
 *
 * final and const
 * 1 说说dart中 final的作用？
 *    final i = 100;
      i = 200;//xxx final修饰的变量只能赋值一次。
      final p1 = Person();
      p1 = new Person();//xxx final修饰的变量只能赋值一次。
      final 修饰引用类型时，引用的内容可以改变。跟Java类似。
      const 修饰引用类型时，引用对象必须拥有一个常量构造器，而且引用的内容不可以改变。且字段必须为final修饰。
 * 2 说说dart中 const的作用？
 *    const  p1 = Person("zhangsan");//xxx const修饰的变量必须是一个常量。
 *    Instance variables can be final but not const.
 *
 * 3 被const和final修饰的变量都只能赋值一次。
 *
 *
 *
 */

class StarRadio extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  int maxGrade = 10;
  double grade;
  StarRadio({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
}) : unselectedColor = Colors.black26, selectedColor = Color(0xffff0000);


  @override
  _StarRadioState createState() => _StarRadioState();
}

class _StarRadioState extends State<StarRadio> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectStarWidget(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnSelectStarWidget(),
        ),
      ],
    );
  }

  List<Widget> buildSelectStarWidget() {
      List<Widget> list = [];
      var star = Icon(Icons.star, color: widget.selectedColor, size: widget.size,);
      int fullStar = (widget.rating / widget.maxRating * widget.count).floor();
      for(var i = 0; i < fullStar; i++) {
        list.add(star);
      }
      //未满星星 利用裁剪即可。
      double width = (widget.size * (widget.count - widget.rating / widget.maxRating * widget.count));
      final halfStar = ClipRect(
        clipper : StarClipper(width),
        child: star,
      );
      list.add(halfStar);
      return list;
  }

  List<Widget> buildUnSelectStarWidget() {
      return List.generate(widget.count, (index) {
        return Icon(Icons.star, color: widget.unselectedColor, size: widget.size,);
      });
  }
}

class StarClipper extends CustomClipper<Rect> {
  final double width;

  StarClipper(this.width) : super();
  @override
  Rect getClip(Size size) {
     return Rect.fromLTRB(0, 0, this.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }

}





main(List<String> args) {
  final i = 100;
  //i = 200;
  //const  p1 = Person("zhangsan");
  final p1 = Person("zhangsan");
  //p1.name = "lisi";

  const p2 = Person("lisi");
  //p2.name = "wanwu";
  const int j = 0;
  const int j1 = 100 * 100;
  //j = 100;


  var foo = const [];
  final bar = const [];
  const baz = [];
  foo = [1, 2, 3];//可以修改
  //bar = [];
  //baz = [];

  const Object k = 3;
  const list = [k as int];
  const map = {if (k is int) k : 'int'};
  const set = {if (list is List<int>) ...list};
  


}

class Person {
   final String name;
   final int age = 100;

   const Person(this.name);
}
