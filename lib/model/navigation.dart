import 'package:flutter/material.dart';
import '../constans.dart' show AppColors;


/**
 * 底部导航数据结构  
 */
class NavigationItemView{
  final String _title;
  final IconData _icon;
  final IconData _activeIcon;
  //固定对象名
  final BottomNavigationBarItem item;

  NavigationItemView({Key key,String title,IconData icon,IconData activeIcon}):
    _title = title,
    _icon = icon,
    _activeIcon = activeIcon,
    item = new BottomNavigationBarItem(
      icon:Icon(icon,color: Color(AppColors.TbaIconNormal)),
      activeIcon: Icon(activeIcon,color: Color(AppColors.TabIconActive)),
      title: Text(title,style: TextStyle(
        fontSize: 14.0,
      ),),
      backgroundColor: Colors.white
    );

}