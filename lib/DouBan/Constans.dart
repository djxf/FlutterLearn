

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page/Home.dart';

List<Widget> pages = [
  HomePage(),
  Text("Hello Flutter"),
];

List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label:"首页"),
  BottomNavigationBarItem(icon: Icon(Icons.book), label:"书影音"),
  BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label:"小组"),
  BottomNavigationBarItem(icon: Icon(Icons.attach_email), label:"市集"),
  BottomNavigationBarItem(icon: Icon(Icons.mark_email_unread_sharp), label: "我"),
];