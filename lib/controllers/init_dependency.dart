import 'package:get/get.dart';

import 'menu_controller.dart';
import 'navigation_controller.dart';

class InitDependency implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => MyMenuController());
    Get.lazyPut(() => NavigationController());

  }
}