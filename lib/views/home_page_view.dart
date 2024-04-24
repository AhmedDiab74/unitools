import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:svg_flutter/svg.dart';
import 'package:unitools/core/constant.dart';
import 'package:unitools/models/item_navigaion_model.dart';
import 'package:unitools/views/add_item_view.dart';
import 'package:unitools/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = '/';
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
    return Scaffold(
      body: const Center(
        child: HomePageBody(),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          if (value == 2) {
            Navigator.pushNamed(context, AddItemView.routeName);
          }
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIndex: 4,
        destinations: itemNavigationBar.map((item) {
          return NavigationDestination(
            icon: SvgPicture.asset(item.icon),
            label: item.title,
          );
        }).toList(),
      ),
    );
  }
}

class ItemNavigationBar extends StatelessWidget {
  const ItemNavigationBar({
    super.key,
    required this.item,
  });
  final ItemNavigationModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(item.icon),
        const SizedBox(
          height: 9.5,
        ),
        Text(
          item.title,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    );
  }
}
