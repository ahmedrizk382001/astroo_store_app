import 'package:flutter/material.dart';

class AdminDrawerItemModel {
  final String title;
  final IconData icon;
  final Widget screen;

  AdminDrawerItemModel(
      {required this.title, required this.icon, required this.screen});
}
