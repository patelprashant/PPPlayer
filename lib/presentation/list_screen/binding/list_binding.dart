import '../controller/list_controller.dart';
import 'package:get/get.dart';

class ListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListController());
  }
}
