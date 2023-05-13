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
    title: 'Buttons',
    subTitle: 'Go to buttons screen',
    link: '/buttons',
    icon: Icons.touch_app,
  ),
      MenuItem(
    title: 'Cards',
    subTitle: 'Go to cards screen',
    link: '/cards',
    icon: Icons.card_giftcard,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Go to progress indicators screen - Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'SnackBars',
    subTitle: 'Go to snackbars screen',
    link: '/snackbar',
    icon: Icons.message,
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