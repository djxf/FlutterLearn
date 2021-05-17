

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LayoutWidget.dart';
import 'MyRichTextCompent.dart';
import 'Test/Flex.dart';

main() {
    //1. 调用一个函数runApp函数
  runApp(MyApp());
}

///
/// Widget：
/// 1 有状态Widget：StatefulWidget
/// 2 无状态Widget：StatelessWidget：内容确定，没有数据改变。
/// 3 Widget库
/// 4 组件化开发
///
///
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("登录"),
            ),
            body: MyFlexTest(),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => print("floatActionButton"),
            ),
          )
      );
  }
}

class Body extends StatefulWidget {

  //状态的概念
  //创建一个类这个类负责维护状态
  @override
  State<StatefulWidget> createState() {
      return BodyState();
  }
}

class BodyState extends State<Body> {

  var flag = true;
  @override
  Widget build(BuildContext context) {
      return Center(
          child: ListView(
              children: [
                MyProductItem("提醒饮茶小助手", "前天通宵改论文，凌晨三点多刚好刷到喝茶动态图，应景（是不是有人求图来着）", "http://wx1.sinaimg.cn/mw600/0089jzyPly1gqfvjoffxzj30k00kbdj5.jpg"),
                MyProductItem("返工兽", "我不想返工啊 屌", "http://wx2.sinaimg.cn/mw600/81f27092gy1gqfv5f9iqpj20go0dddgw.jpg"),
                MyProductItem("美国人", "实事评论", "http://wx4.sinaimg.cn/mw1024/0089jzyPgy1gqfuvdnjfpg30h207vnpj.gif"),
              ],
          )
      );
  }

}

class MyWidget extends StatelessWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyProductItem extends StatelessWidget {
  final String title;
  final String decs;
  final String imageUrl;

  MyProductItem(this.title, this.decs, this.imageUrl);
  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.black12
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red
                    ),
                  ),
                )
              ]
            ),
            SizedBox(height: 8),
            Text(
              decs,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green
              ),
            ),
            SizedBox(height: 8,),
            Image.network(imageUrl)
          ],
        ),
      );
  }


  //State命名以下划线开头
/**
 * 为什么flutter在设计的时候StatefulWidget的build方法放在State中？
 *  1. build出来的Widget需要依赖State中的变量。
 *  2. 在flutter的运行过程中：widget是不断销毁和创建的。
 *
 */
}

class MyHomeCount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return _MyHomeCountState();
  }
}

class _MyHomeCountState extends State<MyHomeCount> {

  int _count = 0;

  @override
  void initState() {
    print("onCall: initState");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     return Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Row(
             mainAxisAlignment:  MainAxisAlignment.center,
             children: [
               RaisedButton(
                   child: Text("+"),
                   color: Colors.green,
                   onPressed: () {
                     _count++;
                     setState(() {

                     });
                   }),
               RaisedButton(
                   child: Text("-"),
                   color: Colors.red,
                   onPressed: () {
                     _count--;
                     setState(() {

                     });
                   }),
             ],
           ),
           Text(
             "当前计数：$_count",
             style: TextStyle(
               fontSize: 25
             ),
           )
         ],
       ),
     );
  }

  @override
  void dispose() {
    print("onCall: dispose");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant MyHomeCount oldWidget) {
    print("onCall: didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print("onCall: didChangeDependencies");
    super.didChangeDependencies();
  }

}

class MyTest extends StatefulWidget {
  const MyTest({Key key}) : super(key: key);

  @override
  _MyTestState createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies()");
  }

  /**
   * 每次热重载都会调用该函数，可用于debug检查代码问题
   */
  @override
  void reassemble() {
    print("reassemble()");
    super.reassemble();
  }

  /**
   * 在widget重新构建时，Flutter framework会调用widget.canUpdate来检测Widget树同一位置的新旧节点。
   * 然后决定是否需要更新。如果widget.canUpdate返回true则会调用此回调。
   * 1 父组件发生build的情况下 子组件该方法才会被调用。
   * 2 该方法调用后一定会被调用本组件的build方法。
   */
  @override
  void didUpdateWidget(covariant MyTest oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  /**
   * 组件被移除后调用，如果未被插入到其他节点。则继续调用dispose方法。
   */
  @override
  void deactivate() {
    super.deactivate();
    print("lifecycle: deactivate");
  }

  /**
   * 永久移除组件，并释放组件资源。
   */
  @override
  void dispose() {
    super.dispose();
    print("dispose: deactivate");
  }


  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: Text("生命周期测试"),
    );
  }
}


/**
 * StatefulWidget的生命周期：
 * 1 createState: StatefulWidget创建State的方法，当StatefulWidget被调用时会立即执行createState。
 * 2 initState：State初始化时调用。可以在此期间执行State变量的初始赋值。也可以与服务端进行交互。
 * 3 didChangeDependencies: 当State对象的依赖发生变化时会被调用。回调时机有待考证。
 *      据简书：1 系统语言或应用主题改变时回调。
 *             2
 * 4 build：返回需要被渲染的widget，会被调用多次。避免被执行多次而导致状态异常。
 *
 *
 */




