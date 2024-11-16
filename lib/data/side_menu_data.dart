import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/model/menu_model.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icom: Icons.home, title: 'Dashboard'),
    MenuModel(icom: Icons.person, title: 'Profile'),
    MenuModel(icom: Icons.run_circle, title: 'Exercise'),
    MenuModel(icom: Icons.settings, title: 'Settings'),
    MenuModel(icom: Icons.history, title: 'History'),
    MenuModel(icom: Icons.logout, title: 'SignOut'),
  ];
}
