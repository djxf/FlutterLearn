

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 07节 布局Widget
 *
 *
 *
 *
 *
 */

class LayoutWidget extends StatefulWidget {
  const LayoutWidget({Key key}) : super(key: key);

  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        FadeInImage(
            placeholder: AssetImage(""),
            image: NetworkImage("")
        ),
        TextField(
          controller: usernameController,
          decoration: InputDecoration(
            labelText: "username",
            icon: Icon(Icons.pets),
            hintText: "please input your name",
            border: OutlineInputBorder()
          ),
          onChanged: (value) {
            if (value.length > 10) {
                usernameController.text = value;
            }
          },
          onSubmitted: (value) {
            print(value);
          },
        ),
        SizedBox(height: 10,),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: "password",
            icon: Icon(Icons.lock),
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 8,),
        Container(
          width: 300,
          height: 40,
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              color: Colors.blue,
              onPressed: (){
                  var username = usernameController.text;
                  var password = passwordController.text;
                  print("username: $username, passwrod: $password");
                  usernameController.text = "";
                  passwordController.text = "";
              },
              child: Text("登 录")),
        )
      ],
    );
  }
}



class MTest2 extends StatelessWidget {
  const MTest2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Align(
        alignment: Alignment(1, 1),
        child: Icon(Icons.pets, size: 50,),
      ),
    );
  }
}

class MTest3 extends StatelessWidget {
  const MTest3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      margin: EdgeInsets.all(10),
      alignment: Alignment(-1, 0),
      child: Icon(Icons.pets),
      decoration: BoxDecoration(
        color: Colors.orange,
        boxShadow: [
          BoxShadow(color: Colors.orange, offset: Offset(10, 10), spreadRadius: 5, blurRadius: 5),
        ]
      ),
    );
  }
}


/**
 * flex组件
 *
 */





