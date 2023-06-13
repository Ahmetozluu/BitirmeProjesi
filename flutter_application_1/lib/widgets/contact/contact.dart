import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../controller/app_controller.dart';
import '../../data/company_data.dart';
import '../../utils/configuration.dart';
import '../gradient_container.dart';
import '../icon_widget.dart';
import '../social_medi_icon.dart';


class SocailMediaView extends StatelessWidget {
  const SocailMediaView({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find();
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                appController.currentItem.imageUrl != null
                    ? Container(
                        width: Get.width / 1,
                        height: Get.height / 2.4,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(appController
                                    .currentItem.imageUrl
                                    .toString())),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                      )
                    : Container(
                        width: Get.width / 1,
                        height: Get.height / 2.6,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                      ),
                gradientContainer(),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0, child: appbarWidget(),
                    )
              ]),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    contactCard(
                        iconName: const Icon(Icons.phone),
                        title: 'Phone',
                        description: company.phone),
                    contactCard(
                        iconName: const Icon(Icons.mail),
                        title: 'Mail',
                        description: company.email),
                    contactCard(
                        iconName: const Icon(CupertinoIcons.location),
                        title: 'Adress',
                        description: company.address),
                    contactCard(
                        iconName: const Icon(CupertinoIcons.phone_arrow_right),
                        title: 'Whatsapp',
                        description: company.whatsAppPhone),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  socialMediaIcon(
                      icon: FontAwesomeIcons.instagram, iconName: 'instagam'),
                  socialMediaIcon(
                      icon: FontAwesomeIcons.facebook, iconName: 'facebook'),
                  socialMediaIcon(
                      icon: FontAwesomeIcons.youtube, iconName: 'youtube')
                ],
              ),
            ],
          ),
        ));
  }

  Widget contactCard({Icon? iconName, String? title, String? description}) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: Get.height / 5.5,
      width: Get.width / 2.3,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget(icon: iconName),
            Text(
              title ?? '',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'PlayfairDisplay'),
            ),
            Text(
              description ?? ' ',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'PlayfairDisplay'),
            )
          ],
        ),
      ),
    );
  }
}
