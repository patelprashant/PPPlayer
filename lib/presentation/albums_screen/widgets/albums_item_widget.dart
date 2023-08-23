import '../controller/albums_controller.dart';
import '../models/albums_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

// ignore: must_be_immutable
class AlbumsItemWidget extends StatelessWidget {
  AlbumsItemWidget(this.albumsItemModelObj);

  AlbumsItemModel albumsItemModelObj;

  var controller = Get.find<AlbumsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            78,
          ),
          width: getSize(
            78,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.blueGray600,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                8,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 3,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  albumsItemModelObj.flowerpowervalueTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Obx(
                  () => Text(
                    albumsItemModelObj.artistTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "lbl_2018".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16,
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
            top: 37,
            bottom: 37,
          ),
        ),
      ],
    );
  }
}
