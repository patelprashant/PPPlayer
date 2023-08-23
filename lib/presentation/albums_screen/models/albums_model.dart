import 'package:get/get.dart';
import 'albums_item_model.dart';

class AlbumsModel {
  Rx<List<AlbumsItemModel>> albumsItemList =
      Rx(List.generate(6, (index) => AlbumsItemModel()));
}
