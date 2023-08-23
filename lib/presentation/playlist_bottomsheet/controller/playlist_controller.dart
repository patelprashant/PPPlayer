import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/presentation/playlist_bottomsheet/models/playlist_model.dart';

class PlaylistController extends GetxController {
  Rx<PlaylistModel> playlistModelObj = PlaylistModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
