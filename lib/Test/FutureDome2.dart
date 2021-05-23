

import 'dart:io';


///future 链式调用
main(List<String> args) {

  print("start");
  Future(() {
    sleep(Duration(seconds: 2));
    return "第一次结果";
  }).then((value) {
    sleep(Duration(seconds: 2));
    print(value);
    return "第二次结果";
  }).then((value) {
    sleep(Duration(seconds: 2));
    print(value);
    return "第三次结果";
  }).then((value) => print(value))
      .catchError((error) {
      print(error);
  });

  print("end");

}