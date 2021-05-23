

import 'dart:io';
import 'package:dio/dio.dart';
///Dart 异步操作
///
///
///

main(List<String> args) {

  testDio();
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
/// 2 dio
/// 3 用到第三方网络请求库，最好进行封装。
///

void testDio() {
  //1 创建dio对象
  final dio = Dio();
  //2 请求网络
  var result = dio.get("http://jandan.net/top").then((value) {
    print(value);
  });
}