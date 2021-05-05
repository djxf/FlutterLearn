

main(List<String> args) {
    sayHello("a");
    test(() {
      print("匿名函数");
    });
    
    test(() => print("箭头函数"));//箭头函数只能有一行。
    test2((num1, num2) => num1 - num2);
}


//dart中没有函数重载。

//函数
int sum(int num1, int num2) {
  return num1 + num2;
}

//String name 必选参数。
//函数的可选参数,只有可选参数有默认值。
//位置可选参数 [int age, double height]
// 命名可选参数 {int age, double height}
void sayHello(String name, [int age, double height]) {
  print(age);
}

void sayHello2(String name, {int age, double height}) {
  print(name);
}

//高阶函数:接受函数为参数的函数
void test(Function function) {
  function.call();
}

void test2(int foo(int num1, int num2)) {
  print(foo(100, 200));
}

//类C typedef
typedef Calculate = int Function(int num1, int num2);

void test3(Calculate calc) {
    calc(100, 200);
}

//函数作为返回值
Calculate dome() {
    return (num1, num2) {
        return num1 * num2;
    };
}
