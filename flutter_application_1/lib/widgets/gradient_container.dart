import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget gradientContainer() {
  return Container(
    width: Get.width / 1,
    height: Get.height / 2.4,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.5)])),
  );
}
