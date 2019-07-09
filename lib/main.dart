import 'package:flutter/material.dart';

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
                onPressed: () => debugPrint('Navigation button is pressed'),
              ),
              title: Text('Hello'),
              //title右边的icon
              actions: <Widget>[
                IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Seerch',
                onPressed: () => debugPrint('Search button is pressed'))
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
  


// /*
//  * title AppBAr
//  */
// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red[100],
//       //类似Android的ActionBar
//       appBar: AppBar(
//         //title左边的icon
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigation',
//           onPressed: () => debugPrint('Navigation button is pressed'),
//         ),
//         title: Text('Hello Flutter'),
//         //title右边的icon
//         actions: <Widget>[
//           IconButton(
//           icon: Icon(Icons.search),
//           tooltip: 'Seerch',
//           onPressed: () => debugPrint('Search button is pressed'))
//         ],
//         elevation: 35.0, 
//       ),
//       //主体内容
//       body: null
//     );
//   }
// }