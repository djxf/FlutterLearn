
import 'dart:math';

main(List<String> args) {
    var p = Person("zhangsan");
    print(p.age);

    var p2 = Person2("zhangsan");
    print(p2.age);

    var p3 = Person2._internal("zhangsan", 100);
    print(p3.age);

    print(Color.values);
    print(min(100, 200));
}

class Person {
    final String name;
    final int age;
    //命名可选参数在构造函数上可以有默认值。
    //Person(this.name, {this.age = 18});

    static const temp = 100;
    //初始化列表
    Person(this.name): this.age = temp > 100 ? 100 : 200;



}

class Person2 {
    String name;
    int age;

    Person2(String name): this._internal(name, 0);

    //构造函数重定向
    Person2._internal(this.name, this.age);
}

//常量构造函数
class Person3 {
    final String name;

    const Person3(this.name);

    //get语法
    String get getName => name;
}

//抽象类
//抽象类化不能实例化

abstract class Shape {
    void run();
    void getArae();
    String getInfo() {
        return "正方形";
    }
}

class Circle extends Shape {
  @override
  void getArae() {

  }

  @override
  void run() {

  }

}

//隐式接口： 所有的类都是接口


//枚举
enum Color {
  RED,GREEN,BLACK,WHITE
}