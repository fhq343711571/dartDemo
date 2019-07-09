import 'package:flutter/material.dart';

/*
 * tab
 */
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.white,
            //类似Android的ActionBar
            appBar: AppBar(
              //title左边的icon
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation',
                //点击事件
                onPressed: () => debugPrint('Navigation button is pressed'),
              ),
              title: Text('Tab Demo'),
              //title右边的icon
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Seerch',
                  onPressed: () => debugPrint('Navigation button is pressed')
                )
              ],
              elevation: 5.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist),text: '花',),
                  Tab(icon: Icon(Icons.change_history),text: '历史'),
                  Tab(icon: Icon(Icons.directions_bike),text: '自行车自行车',)
                ],
              ),
            ), 
            body: TabBarView(
              children: <Widget>[
                Icon(Icons.local_florist,size:128.0,color:Colors.black12),
                Icon(Icons.change_history,size:128.0,color:Colors.black12),
                Icon(Icons.directions_bike,size:128.0,color:Colors.black12)
              ],
            ),
        ),
    );
  }
}