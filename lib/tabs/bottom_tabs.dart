import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/profile.dart';
import '../screens/search.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({required this.page, required this.title, required this.icon});

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: const Home(),
      icon: const Icon(Icons.home),
      title: const Text("Home"),
    ),
    TabNavigationItem(
      page: Search(),
      icon: const Icon(Icons.search),
      title: const Text("Search"),
    ),
    TabNavigationItem(
      page: const Profile(),
      icon: const Icon(Icons.home),
      title: const Text("Home"),
    ),
  ];
}
