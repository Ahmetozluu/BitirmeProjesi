import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_routes.dart';
import '../widgets/container_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: Get.height / 1,
          child: Image.asset(
            'assets/logo/login.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: Get.height / 1.8,
          left: Get.width / 7,
          child: Container(
              width: Get.width / 1.4,
              height: Get.height / 3,
              ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: Get.height / 2,
              width: Get.width / 1,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {

                      Get.toNamed(AppRoutes.login);
                   // debugPrint(AppController().currentItem.toString());
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 34,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'Giriş Yapın',
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      containerForm(title: 'Kullanıcı Adı'),
                      containerForm(title: 'Parola'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Column(
                      children: [
                        loginBtn(
                            btnName: 'Giriş Yap',
                            onClick: () {
                              Get.toNamed(AppRoutes.ListTwoView);
                            }),
                        loginBtn(btnName: 'Kayıt Oldunuz mu ?', textSize: 18),
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    ));
  }

  Widget loginBtn({Function? onClick, String? btnName, double? textSize}) {
    return Center(
      child: TextButton(
          onPressed: () => onClick!(),
          child: Text(
            btnName ?? '',
            style: TextStyle(
                fontSize: textSize ?? 26,
                fontFamily: 'PlayfairDisplay',
                color: Colors.black),
          )),
    );
  }
}
