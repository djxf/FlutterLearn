
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'View/StarRadio.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("豆瓣"),
        centerTitle: true,
      ),
      body: Center(child: StarRadio(rating: 8.7,)),
    ),
    debugShowCheckedModeBanner: false,
  ));
}