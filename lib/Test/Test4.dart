

main(List<String> args) {
    var name;
    name ??= "lisi";
    var temp = name ?? "zhangsan";
    print(name);

    //级联运算符
    var p = Person("zhangsan")
            ..name = "张三"
            ..eat()
            ..run();
}

class Person {
    String name;

    //命名构造函数
    Person(this.name);
    //dynamic 是一种类型。
    // Person.withMap(Map<String, dynamic> map){
    //
    // }

    void eat() {

    }

    void run() {

    }
}

class Person2 {
    final String name;
    final int age;
    Person2(this.name) : age = 10;

}