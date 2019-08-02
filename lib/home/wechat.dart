import 'package:flutter/material.dart';


/**
 * 静态控件
 */
class wechat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
          Container(
            color: Colors.yellow,
            height: 100.0,
          ),
          Text("HELLO WORD",style: TextStyle(fontSize: 40.0,color: Colors.red,fontWeight: FontWeight.w900),textAlign:TextAlign.center),
      ],
      //主轴
      mainAxisAlignment: MainAxisAlignment.start,
      //交叉轴
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  
}