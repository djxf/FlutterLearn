
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin MyRichText implements StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
      children: [
        TextSpan(text: "Hello", style: TextStyle(color: Colors.red, fontSize: 25)),
        TextSpan(text: "Flutter", style: TextStyle(color: Colors.green)),
        TextSpan(text: "and World!", style: TextStyle(color: Colors.black12)),
      ])
      );
    }
}

class MyRaiseButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

  }
}

//快捷生成StatelessWidget
class MyHomeTextWidget extends StatelessWidget {
  const MyHomeTextWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Column(
          children: [
            FlatButton(
                onPressed: () => print("flatButton"),
                color: Colors.green,
                child: Text("flatButton")),
            OutlineButton(
                onPressed: () => print("outlineButton"),
                color: Colors.red,
                child: Text("outlineButton")
            ),
            RaisedButton(
              onPressed: () => print("raiseButton"),
              color: Colors.amberAccent,
              child: Text("raisedButton"),
            ),
            //自定义Button
            FlatButton(
                color: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                onPressed: () => print("自定义按钮"),

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite, color: Colors.red,),
                    Text("喜欢作者")
                  ],
                ))
          ],
        );
  }
}

class MyTestStatefulWidget extends StatefulWidget {
  const MyTestStatefulWidget({Key key}) : super(key: key);

  @override
  _MyTestStatefulWidgetState createState() => _MyTestStatefulWidgetState();
}

class _MyTestStatefulWidgetState extends State<MyTestStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

}


