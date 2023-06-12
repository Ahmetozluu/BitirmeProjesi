import 'dart:async';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class SplashController extends GetxController {
  late VideoPlayerController myVideoPlayerController;

  @override
  void onInit() {
    myVideoPlayerController =
        VideoPlayerController.asset('assets/logo/splash_video.mp4');
    myVideoPlayerController.initialize().then((_) {
      Timer(
        const Duration(seconds: 0),
        () {
          myVideoPlayerController.play();
          myVideoPlayerController
              .setLooping(true); // video bittiğinde de tekrar oynatacak.
        },
      );
    });
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    myVideoPlayerController.dispose();
  }

  VideoPlayerController get video => myVideoPlayerController;
}
