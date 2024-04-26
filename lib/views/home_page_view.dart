import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:svg_flutter/svg.dart';
import 'package:unitools/core/constant.dart';
import 'package:unitools/widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    itemNavigationBar.map((item) {
      return PersistentBottomNavBarItem(
        icon: SvgPicture.asset(item.icon),
        title: item.title,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      );
    }).toList();
    return const Scaffold(
      body: Center(
        child: HomePageBody(),
      ),
      
    );
  }
}