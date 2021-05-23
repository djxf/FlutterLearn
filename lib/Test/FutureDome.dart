

import 'dart:io';

///Dart 异步操作
///
///
///

main(List<String> args) {

  print("start");
  var future = _getDataFromInternet();
  future.then((value) {
      print(value);
  }).catchError((error) {
      print("发生错误：$error");
  }).whenComplete(() {
    print("when complete");
  });
  print("main end");
}



Future<String> _getDataFromInternet() {
  return Future(() {
      sleep(Duration(seconds: 3));
      //return "Hello World";
    throw Exception("网络请求错误");
  });
}

/// 1 阅读Dart future源码。
/// 2 