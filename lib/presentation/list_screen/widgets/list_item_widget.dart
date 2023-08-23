import '../controller/list_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<ListController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            26,
          ),
          width: getSize(
            26,
          ),
          margin: getMargin(
            top: 8,
            bottom: 7,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: getPadding(
                    left: 8,
                  ),
                  child: Obx(
                    () => Text(
                      listItemModelObj.typeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium18,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getSize(
                    26,
                  ),
                  width: getSize(
                    26,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA70075,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "lbl_podval_caplella".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular14,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgMoreicon,
          height: getVerticalSize(
            4,
          ),
          width: getHorizontalSize(
            20,
          ),
          margin: getMargin(
            top: 17,
            bottom: 20,
          ),
        ),
      ],
    );
  }
}
