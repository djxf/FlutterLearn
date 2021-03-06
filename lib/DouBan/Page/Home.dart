
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/DouBan/View/DashedLine.dart';
import 'package:flutter_app/DouBan/View/StarRadio.dart';

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
      padding: EdgeInsets.all(10),
      child: ListView(
        children: List.generate(100, (index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHead(),
              SizedBox(height: 10,),
              buildContent(),
              SizedBox(height: 10,),
              Divider(height: 10.0, color: Colors.black26,)
            ],
          );
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

  //内容的布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 8,),
        buildContentImage(),
        SizedBox(width: 8,),
        buildContentInfo(),
        SizedBox(width: 8,),
        buildContentLine(),
        SizedBox(width: 8,),
        buildContentWish()
      ],
    );
  }

  Widget buildContentImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network("http://wx1.sinaimg.cn/mw600/0089jzyPly1grivsfrex9j60u01badup02.jpg", height: 150,),
    );
  }


  /**
   * Expanded: Creates a widget that expands a child of a Row, Column,
   * or Flex so that the child fills the available space along the flex widget's main axis.
   */
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          buildContentRate(),
          buildContentInfoDesc()
        ],
      ),
    );
  }

  Widget buildContentInfoTitle() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(child: Icon(Icons.play_circle_outline, color: Colors.pink, size: 20,)),
          TextSpan(
            text: "一步之遥",
            style: TextStyle(fontSize: 20, color: Colors.black)
          ),
          TextSpan(
              text: "(1994)",
              style: TextStyle(fontSize: 20, color: Colors.black26)
          ),
        ]
      )
    );
  }

  Widget buildContentRate() {
    return Row(
      children: [
        StarRadio(rating: 8.8),
        SizedBox(width: 5,),
        Text("8.8", style: TextStyle(fontSize: 20),)
      ],
    );
  }

  Widget buildContentInfoDesc() {
    return Text("犯罪 剧情/ 姜文 /拆弹专家：香港警务处爆炸品处理课 EOD（Explosive Ordnance Disposal Bureau） 成立于1972年，隶属于香港警务处行动处行动部，除了解除炸弹危机外，甚少人知道爆炸品处理课亦会参与反恐及保护要人的工作，在有需要的情况下，可以立即处理爆炸品和生化事件。还有“香港炸弹数据.. ",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget buildContentLine() {
    return Container(
      height: 100,
      child: DashedLine(
        axis: Axis.vertical,
        dashedHeight: 6,
        dashedWidth: 1,
        count: 10,
        color: Colors.pink,
      ),

    );
  }

  //内容的想看
  Widget buildContentWish() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.library_add_rounded),
          Text("想看",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 235, 170, 60)
            ),
          )
        ],
      ),
    );
  }


}


