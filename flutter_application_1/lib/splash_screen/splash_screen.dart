import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart'; 
import '../../controller/splash_controller.dart';
import '../utils/app_routes.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: [
              AspectRatio(
                aspectRatio: _.video.value.aspectRatio,
                child: VideoPlayer(_.video),
              ),
              Positioned(
                bottom: Get.height / 3,
                left: Get.width / 12,
                child: Container(
                    width: Get.width / 1.2,
                    height: Get.height / 2,
                    child: Image.asset(
                      'assets/logo/logo.png',
                      fit: BoxFit.contain,
                    )),
              ),
              Positioned(
                  bottom: 100,
                  left: Get.width / 20,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.login);
                    },
                    child: Container(
                        width: Get.width / 1.1,
                        height: Get.height / 18,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Giriş',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 26,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'PlayfairDisplay'),
                          ),
                        )),
                  ))
            ],
          ),
        );
      },
    );
  }
}
