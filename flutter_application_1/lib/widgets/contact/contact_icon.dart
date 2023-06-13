import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/configuration.dart';

Widget socialMediaIcon({Function? onClick, String? iconName, IconData? icon}) {
  return InkWell(
    onTap: () => onClick!(),
    child: Container(
      margin: const EdgeInsets.all(8.0),
      width: Get.width / 4.6,
      height: Get.height / 11,
      decoration: BoxDecoration(
          color: lightGrey, borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 40,
          ),
          Text(
            iconName ?? ' ',
            style: const TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    ),
  );
}
