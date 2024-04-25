import 'package:flutter/material.dart';

class ItemNavigationModel {
  final String icon, title;
  IconData? photo;

  ItemNavigationModel({
    this.photo,
    required this.icon, required this.title});
}
