

import 'dart:io';
/// await async。
main(List<String> args) {
    print("main start");
    getData();
    print("main end");
}


Future getNetworkData(String arg) {
    return Future(() {
      sleep(Duration(seconds: 2));
      return "Hello $arg";
    });
}

Future<void> getData() async {
  var res1 = await getNetworkData("argments");
  print(res1);
  var res2 = await getNetworkData(res1);
  print(res2);
  var res3 = await getNetworkData(res2);
  print(res3);
}