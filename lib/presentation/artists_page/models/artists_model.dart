import 'package:get/get.dart';
import 'artists_item_model.dart';

class ArtistsModel {
  Rx<List<ArtistsItemModel>> artistsItemList =
      Rx(List.generate(6, (index) => ArtistsItemModel()));
}
