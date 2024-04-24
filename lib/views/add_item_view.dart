import 'package:flutter/material.dart';
import 'package:unitools/widgets/add_item_view_body.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({super.key});
  static String routeName = "/AddItemView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddItemViewBody(),
    );
  }
}
