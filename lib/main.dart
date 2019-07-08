import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'model/post.dart';

void main() => runApp(App());


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      //隐藏顶部出现的debug标识
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}


class Home extends StatelessWidget{
  //item数据绑定
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color:Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 20.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title
          ),
          SizedBox(height: 7.0),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 20.0)
        ],
      ),
    );
  }

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
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      )
    );
  }
}

