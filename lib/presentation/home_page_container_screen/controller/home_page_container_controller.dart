import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/presentation/home_page_container_screen/models/home_page_container_model.dart';
import 'package:ppplayer/widgets/custom_bottom_bar.dart';

class HomePageContainerController extends GetxController {
  Rx<HomePageContainerModel> homePageContainerModelObj =
      HomePageContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
