import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/presentation/top_playlists_page/models/top_playlists_model.dart';

class TopPlaylistsController extends GetxController {
  TopPlaylistsController(this.topPlaylistsModelObj);

  Rx<TopPlaylistsModel> topPlaylistsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
