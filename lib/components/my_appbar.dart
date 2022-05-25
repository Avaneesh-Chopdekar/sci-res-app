import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.centerTitle,
    this.leading,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final String title;
  final bool? centerTitle;
  final List<IconButton>? actions;
  final IconButton? leading;
  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      elevation: 0.7,
      backgroundColor: Colors.white,
      actions: actions,
      leading: leading,
      centerTitle: centerTitle,
    );
  }
}
