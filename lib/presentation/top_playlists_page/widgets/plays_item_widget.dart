import '../controller/top_playlists_controller.dart';
import '../models/plays_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PlaysItemWidget extends StatelessWidget {
  PlaysItemWidget(this.playsItemModelObj);

  PlaysItemModel playsItemModelObj;

  var controller = Get.find<TopPlaylistsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 18,
        top: 21,
        right: 18,
        bottom: 21,
      ),
      decoration: AppDecoration.gradientLime800GreenA400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 38,
                  width: 38,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgBookmarkBlack90038x38,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 39,
                  ),
                  child: Text(
                    "lbl_renaissance".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium28,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_843_tracks".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16,
                      ),
                      Container(
                        height: getSize(
                          3,
                        ),
                        width: getSize(
                          3,
                        ),
                        margin: getMargin(
                          left: 4,
                          top: 11,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA70095,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                        ),
                        child: Text(
                          "lbl_23_hours".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgPlayWhiteA700,
            height: getSize(
              59,
            ),
            width: getSize(
              59,
            ),
            margin: getMargin(
              top: 76,
              bottom: 3,
            ),
          ),
        ],
      ),
    );
  }
}
