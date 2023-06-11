import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

Container titleWidget(String title) {
  return Container(
      width: Get.width / 6,
      height: Get.height / 7,
      color: Colors.white,
      child: Center(
          child: Text(
        title,
        style: AppTheme.light.textTheme.titleSmall,
      )));
}
