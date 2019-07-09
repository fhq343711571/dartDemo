import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewWidget extends StatelessWidget{
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
    
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      );
  }
}