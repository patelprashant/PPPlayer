import 'package:get/get.dart';
import 'plays_item_model.dart';

class TopPlaylistsModel {
  Rx<List<PlaysItemModel>> playsItemList =
      Rx(List.generate(3, (index) => PlaysItemModel()));
}
