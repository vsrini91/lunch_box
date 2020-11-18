import 'package:flutter/material.dart';
import 'package:lunch_box/presentation/pages/menu_page.dart';
import 'package:lunch_box/presentation/pages/order_page.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: MenuScreen(),
          icon: Icon(Icons.restaurant_menu),
          title: Text("Menu"),
        ),
        TabNavigationItem(
          page: Order(),
          icon: Icon(Icons.playlist_add_check),
          title: Text("Order"),
        ),
      ];
}
