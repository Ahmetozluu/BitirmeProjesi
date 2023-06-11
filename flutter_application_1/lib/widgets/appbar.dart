import 'package:flutter/material.dart';
import '../theme/theme.dart';

PreferredSize appbarWidget() {
  return PreferredSize(
    preferredSize: const Size(50, 50),
    child: AppBar(
      actions: const [Padding(padding: EdgeInsets.only(right: 3))],
      iconTheme: IconThemeData(color: AppTheme.light.colorScheme.primary),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image.asset("assets/images/gural-logo.png"),
    ),
  );
}
