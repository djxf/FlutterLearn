
import 'dart:io';

/// await,async使用。
/// 两个问题：
///     1 await必须在async函数中使用。
///     2 async 函数必须返回Future
///
main(List<String> args) {


  // Future.value("Hello World").then((value) => print(value));
  //
  // Future.error("error message").catchError((value) => print(value));
  //
  // Future.delayed(Duration(seconds: 3), ).then((value) {
  //   return "delayed messsage";
  // }).then((value) => print(value));

  print("main start");
  var result = getData().then((value) => print(value));
  print(result);
  print("main end");
}

Future<String> getData() async {
  await sleep(Duration(seconds: 3));
  return "Hello World";
}