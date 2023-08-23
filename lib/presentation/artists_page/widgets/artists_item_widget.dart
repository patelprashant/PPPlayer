import '../controller/artists_controller.dart';
import '../models/artists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  ArtistsItemWidget(this.artistsItemModelObj);

  ArtistsItemModel artistsItemModelObj;

  var controller = Get.find<ArtistsController>();

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
            color: ColorConstant.green300,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                39,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
            top: 15,
            bottom: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  artistsItemModelObj.artistnameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium18,
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
                      child: Obx(
                        () => Text(
                          artistsItemModelObj.albumsCounterTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular16,
                        ),
                      ),
                    ),
                  ],
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
