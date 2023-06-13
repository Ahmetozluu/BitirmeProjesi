import 'package:get/get.dart';
import '../data/menu_data.dart';
import '../model/menu_model.dart';

class AppController extends GetxController {
  late var currentItem = Menu(id: 0, name: "");



  goTo(Menu? item) {
    if (item == null) {
      return;
    }

    if (item.route == null || item.route == "") return;

    if (item.route == "/email") {
      //   launchEmail(item.url!);
    } else if (item.route == "/launchInWebview") {
      //    launchInWebViewWithJavaScript(item.url);
    } else if (item.route == "/launchInBrowser") {
      //    launchInBrowser(item.url);
    } else if (item.route == "/whatsApp") {
      //    launchWhatsApp(item.route!);
    } else if (item.route == "/tel") {
      //    launchPhone(item.route!);
    } else if (item.route == "/webview") {
      Get.toNamed(item.route!, arguments: item.url);
      Get.put(AppController());
    } else if (item.route!.startsWith("/home") ||
        item.route!.startsWith("/list") ||
        item.route!.startsWith("/detail") ||
        item.route!.startsWith("/contact") ||
        item.route!.startsWith("/account") ||
        item.route!.startsWith("/zoom") ||
        item.route!.startsWith("/social") ||
        item.route!.startsWith("/whatTo")) {
      Get.toNamed('${item.route!}/${item.id}');
    } else {
      Get.toNamed(item.route!);
    }
  }
}
