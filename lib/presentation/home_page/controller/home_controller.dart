import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/presentation/home_page/models/home_model.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
