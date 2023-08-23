import 'package:get/get.dart';
import 'list_item_model.dart';

class ListModel {
  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(3, (index) => ListItemModel()));
}
