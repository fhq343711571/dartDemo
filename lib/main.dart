import 'package:flutter/material.dart';
import './home/home_screen.dart';
import 'constans.dart' show AppColors;


// void main() => runApp(App());

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "DemoWechat",
  theme: ThemeData.light().copyWith(
    primaryColor: Color(AppColors.AppBarColor),
    cardColor: Color(AppColors.AppBarColor)
  ),
  home: HomeScreen(),
));











class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      //隐藏顶部出现的debug标识
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
         //点击背景色设置
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.yellow
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
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   tooltip: 'Navigation',
              //   //点击事件
              //   onPressed: () => debugPrint('Navigation button is pressed'),
              // ),
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
                  Tab(icon: Icon(Icons.local_florist),text: '花'),
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
            endDrawer: Container(
              color: Colors.white,
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('hello')
                ],
              ),
            ),
            //侧滑控件
            drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    // DrawerHeader(
                    //     child: Text("标题"),
                    //     decoration: BoxDecoration(
                    //       color: Colors.grey[100]
                    //     ),
                    // ),
                    UserAccountsDrawerHeader(
                      accountName: Text("张三",style:TextStyle(fontWeight:FontWeight.bold)),
                      accountEmail: Text("mrz9011@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3677209778,3519789803&fm=26&gp=0.jpg"),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellow[400],
                        image: DecorationImage(
                          image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562677751400&di=e0d7fbf7192e2c439bc1edc596306b42&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg"),
                          fit: BoxFit.scaleDown,
                          colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.6), 
                            BlendMode.hardLight
                          )
                        )
                      ),
                    ),
                    ListTile(
                      title: Text('Message',textAlign:TextAlign.right),
                      //在title右边展示
                      trailing: Icon(Icons.message,color:Colors.red,size:22),
                      //title左右展示
                      // leading: Icon(Icons.airplay,color:Colors.red,size:22),
                      //点击关闭窗口
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      title: Text('favorite',textAlign:TextAlign.right),
                      //在title右边展示
                      trailing: Icon(Icons.favorite,color:Colors.red,size:22),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      title: Text('settings',textAlign:TextAlign.right),
                      //在title右边展示
                      trailing: Icon(Icons.settings,color:Colors.red,size:22),
                      onTap: () => Navigator.pop(context),
                    )
                  ],
                ),
            ),
        ),
    );
  }
}


