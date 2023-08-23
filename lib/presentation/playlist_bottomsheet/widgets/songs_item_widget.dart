import '../controller/playlist_controller.dart';
import '../models/songs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

// ignore: must_be_immutable
class SongsItemWidget extends StatelessWidget {
  SongsItemWidget(this.songsItemModelObj);

  SongsItemModel songsItemModelObj;

  var controller = Get.find<PlaylistController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getSize(
            60,
          ),
          width: getSize(
            60,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.cyanA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                30,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 11,
            top: 7,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  songsItemModelObj.typeTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Obx(
                  () => Text(
                    songsItemModelObj.artistTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14,
                  ),
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
            top: 27,
            bottom: 29,
          ),
        ),
      ],
    );
  }
}
