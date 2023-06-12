import 'package:flutter/material.dart';
import 'package:flutter_application_1/kullanici_list.dart';
import 'package:flutter_application_1/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../login/login.dart';
import '../utils/app_routes.dart';

routes() => [
      GetPage(
        name: AppRoutes.ListTwoView,
        page: () => const ListTwoView(),
      ),
      GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
      ),
      GetPage(
        name: AppRoutes.login,
        page: () => const LoginView(),
      ),
    ];
