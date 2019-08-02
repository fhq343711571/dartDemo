import 'package:flutter/material.dart';
import 'package:flutter01/constans.dart';
import 'package:flutter01/model/navigation.dart';
import '../model/navigation.dart';
import '../constans.dart';
import 'wechat.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  //底部导航
  List<NavigationItemView> _navigationViews;
  PageController _pageController;
  List<Widget> pages;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _navigationViews = [
      NavigationItemView(
          title: "微信",
          icon: IconData(0xe67c, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe67c, fontFamily: Constants.IconFontFamily)),
      NavigationItemView(
          title: "通讯录",
          icon: IconData(0xe63a, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe63a, fontFamily: Constants.IconFontFamily)),
      NavigationItemView(
          title: "发现",
          icon: IconData(0xe746, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe746, fontFamily: Constants.IconFontFamily)),
      NavigationItemView(
          title: "我的",
          icon: IconData(0xe63b, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe63b, fontFamily: Constants.IconFontFamily))
    ];

    pages = [
      wechat(),
      Container(color: Colors.blue),
      Container(color: Colors.yellow),
      Container(color: Colors.brown)
    ];

    _pageController = PageController(initialPage: _currentIndex);

  }

  _buildPopMenuItem(Widget icon, String content) {
    return Row(
      children: <Widget>[
        icon,
        Container(
          width: 10.0,
        ),
        Text(
          content,
          style:TextStyle(fontSize: 16, color: Color(AppColors.AppBarMenuColor)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar navigationBar = BottomNavigationBar(
      //底部导航文字变色
      fixedColor: const Color(AppColors.TabIconActive),
      items: _navigationViews.map((NavigationItemView view) {
        return view.item;
      }).toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.ease);
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("微信"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("点击了搜索");
            },
          ),
          Container(width: 10.0),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<String>>[
                PopupMenuItem(
                  child: _buildPopMenuItem(
                      Icon(Icons.access_time,
                          color: Color(AppColors.AppBarMenuColor)),
                      "发起群聊"),
                  value: "group_chat",
                ),
                PopupMenuItem(
                  child: _buildPopMenuItem(
                      Icon(Icons.accessible,
                          color: Color(AppColors.AppBarMenuColor)),
                      "扫一扫"),
                  value: "qr_code",
                ),
                PopupMenuItem(
                  child: _buildPopMenuItem(
                      Icon(Icons.zoom_out_map,
                          color: Color(AppColors.AppBarMenuColor)),
                      "收付款"),
                  value: "pay",
                ),
                PopupMenuItem(
                  child: _buildPopMenuItem(
                      Icon(Icons.child_friendly,
                          color: Color(AppColors.AppBarMenuColor)),
                      "添加好友"),
                  value: "add_friend",
                )
              ];
            },
            icon: Icon(Icons.add),
            onSelected: (String selected) {
              print("点击的是$selected");
            },
          ),
          Container(
            width: 10.0,
          )
        ],
      ),
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return pages[index];
        },
        itemCount: pages.length,
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
