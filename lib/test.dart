
main(List<String> args) {
  print("Hello Dart Test");

  //final和const的区别：const必须赋值在编译器确定，final可以通过计算/函数获取一个值。
  final address = "北京市";
  var p1 = Person("zhangsan");
  var p2 = Person("zhangsan");
  print(p1 == p2);//false

  //1 列表
  var names = ["abc", "cba", "nba", "nba"];

  //2 集合Set
  var movices = {"11", "11", "22", "22"};
  print(movices.length);
  names = Set<String>.from(names).toList();
  print(names);
  //3 映射Map
  var info = {
    "1": "北京",
    "2": "天津",
  };
  print(info["2"]);

}

//类
class Person {

  final String name;
  const Person(this.name);

}