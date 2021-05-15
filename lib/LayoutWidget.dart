

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
            if (value.length > 5) {

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
              },
              child: Text("登 录")),

        )
      ],
    );
  }
}




