import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
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
    title: 'Animated containers',
    subTitle: 'Stateful animated containers',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItem(
      title: 'UI + Controls + Tiles',
      subTitle: 'Controles de flutter',
      link: '/ui-controls',
      icon: Icons.list),
        MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Tutorial de la app',
      link: '/tutorial',
      icon: Icons.accessibility_new_rounded),
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
