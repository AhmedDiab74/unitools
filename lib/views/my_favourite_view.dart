import 'package:flutter/material.dart';
import 'package:unitools/widgets/my_favourite_view_body.dart';

class MyFavouriteView extends StatelessWidget {
  const MyFavouriteView({super.key});
static String routeName = "/MyFavouriteView";
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: MyFavouriteViewBody(),
    );
  }
}