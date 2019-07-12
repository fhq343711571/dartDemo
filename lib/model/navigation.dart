import 'package:flutter/material.dart';


///底部导航数据结构
///
class NavigationItemView{
  //固定对象名
  final BottomNavigationBarItem item;

  NavigationItemView({Key key,String title,IconData icon,IconData activeIcon}):
    item = new BottomNavigationBarItem(
      icon:Icon(icon),
      activeIcon: Icon(activeIcon),
      title: Text(title),
      backgroundColor: Colors.white
    );

}