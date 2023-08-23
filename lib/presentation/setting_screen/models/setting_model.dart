import 'package:get/get.dart';
import 'equalizers_item_model.dart';

class SettingModel {
  Rx<List<EqualizersItemModel>> equalizersItemList =
      Rx(List.generate(6, (index) => EqualizersItemModel()));
}
