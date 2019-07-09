import 'package:flutter/material.dart';
import './listview_widget.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      //类似Android的ActionBar
      appBar: AppBar(
        title: Text('Hello Flutter'),
        elevation: 35.0, 
      ),
      //主体内容
      body:ListViewWidget() 
    );
  }
}