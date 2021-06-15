
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 *
 *
 * HomePage
 *
 */

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(100, (index) {
          return buildHead();
        }),
      ),
    );
  }


  //头部排名
  Widget buildHead() {
    var movie;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 205, 144),
          borderRadius: BorderRadius.circular(3)
      ),
      child: Text("No.${movie?.rank ?? 1}", style: TextStyle(fontSize: 20, color: Colors.orange),),
    );
  }

}


