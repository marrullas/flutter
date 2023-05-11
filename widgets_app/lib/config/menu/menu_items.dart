import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
    });
}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Theme',
    subTitle: 'Change the app theme',
    link: '/theme',
    icon: Icons.color_lens,
  ),
  MenuItem(
    title: 'About',
    subTitle: 'About this app',
    link: '/about',
    icon: Icons.info,
  ),
  MenuItem(
    title: 'Settings',
    subTitle: 'App settings',
    link: '/settings',
    icon: Icons.settings,
  ),
  MenuItem(
    title: 'Help',
    subTitle: 'Help and support',
    link: '/help',
    icon: Icons.help,
  ),
  MenuItem(
    title: 'Logout',
    subTitle: 'Logout from the app',
    link: '/logout',
    icon: Icons.logout,
  ),
];