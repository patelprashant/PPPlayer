import 'package:get/get.dart';
import 'songs1_item_model.dart';

class ArtistModel {
  Rx<List<Songs1ItemModel>> songs1ItemList =
      Rx(List.generate(2, (index) => Songs1ItemModel()));
}
