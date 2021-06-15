

import 'dart:html';

import 'package:flutter_app/DouBan/Model/HomeConfig.dart';
import 'package:flutter_app/DouBan/Model/MovieItem.dart';

class HomeRequest {

  static void requestMovieList(int start) async {

    //1 构建Url
    final movieURL = "/movie/top/250?start=$start&count=${HomeConfig.movieCount}";


    //2 发送网络请求获取数据
    final result = await HttpRequest.request(movieURL);
    //final subjects = result["subjects"];

    //3 讲Map转换成Model
    List<MovieItem> movies = [];
    // for(var sub in subjects) {
    //   movies.add(MovieItem.fromMap(sub));
    // }
    print(movies);
  }
}
