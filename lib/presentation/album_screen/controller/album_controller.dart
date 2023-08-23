import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/presentation/album_screen/models/album_model.dart';

class AlbumController extends GetxController {
  Rx<AlbumModel> albumModelObj = AlbumModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
