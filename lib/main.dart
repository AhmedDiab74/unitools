import 'package:flutter/material.dart';
import 'package:unitools/views/add_data_view.dart';
import 'package:unitools/views/add_item_view.dart';
import 'package:unitools/views/home_page_view.dart';
import 'package:unitools/views/my_favourite_view.dart';

void main() {
  runApp(const UniTools());
}

class UniTools extends StatelessWidget {
  const UniTools({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: HomePage.routeName,
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          AddDataView.routeName: (context) => const AddDataView(),
          AddItemView.routeName: (context) => const AddItemView(),
          MyFavouriteView.routeName: (context) => const MyFavouriteView(),
        });
  }
}
