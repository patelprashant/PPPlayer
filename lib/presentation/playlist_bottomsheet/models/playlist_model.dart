import 'package:get/get.dart';
import 'songs_item_model.dart';

class PlaylistModel {
  Rx<List<SongsItemModel>> songsItemList =
      Rx(List.generate(8, (index) => SongsItemModel()));
}
