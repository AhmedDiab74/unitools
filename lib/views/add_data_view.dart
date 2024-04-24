import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitools/widgets/add_data_view_body.dart';

class AddDataView extends StatelessWidget {
  const AddDataView({super.key});
  static String routeName = '/AddDataView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddDataViewBody(),
    );
  }
}
