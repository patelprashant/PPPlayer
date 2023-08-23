import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/presentation/list_screen/models/list_model.dart';

class ListController extends GetxController {
  Rx<ListModel> listModelObj = ListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
