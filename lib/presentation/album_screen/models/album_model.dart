import 'package:get/get.dart';
import 'album_item_model.dart';

class AlbumModel {
  Rx<List<AlbumItemModel>> albumItemList =
      Rx(List.generate(4, (index) => AlbumItemModel()));
}
