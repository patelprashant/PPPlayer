import '../controller/setting_controller.dart';
import '../models/equalizers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

// ignore: must_be_immutable
class EqualizersItemWidget extends StatelessWidget {
  EqualizersItemWidget(this.equalizersItemModelObj);

  EqualizersItemModel equalizersItemModelObj;

  var controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 21,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                equalizersItemModelObj.dbCounterTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular12,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1,
              height: getVerticalSize(
                298,
              ),
              width: getHorizontalSize(
                19,
              ),
              margin: getMargin(
                top: 8,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Obx(
                () => Text(
                  equalizersItemModelObj.hzCounterTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
