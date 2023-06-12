import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../data/menu_data.dart';
import '../utils/configuration.dart';
import 'customListTile.dart';

Widget drawer() {
  return Drawer(
    
      elevation: 5,
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: Get.width / 1,
            height: Get.height / 6,
            child: Image.asset('assets/logo/logo.png',
                fit: BoxFit.contain, color: mainColor),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(width: 1, color: mainColor))),
            child: customListTile(
                onClick: () {
                  return bottomSheetWidget();
                },
                name: 'Language',
                icon: const Icon(FontAwesomeIcons.globe)),
          ),
          Container(
            height: Get.height / 1.8,
            color: Colors.white,
            child: ListView.builder(
                itemCount: drawerMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return customListTile(
                      name: drawerMenu[index].name,
                      onClick: () {
                        Get.toNamed(drawerMenu[index].route.toString());
                      });
                }),
          )
        ],
      ));
}

Future<dynamic> bottomSheetWidget() {
  return Get.bottomSheet(
      isScrollControlled: true,
      Container(
        padding: const EdgeInsets.all(22.0),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            customListTile(name: 'TR'),
            customListTile(name: 'EN'),
            customListTile(name: 'RU')
          ],
        ),
      ));
}
