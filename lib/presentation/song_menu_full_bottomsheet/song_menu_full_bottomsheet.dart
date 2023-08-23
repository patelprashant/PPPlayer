import 'controller/song_menu_full_controller.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/custom_icon_button.dart';

class SongMenuFullBottomsheet extends StatelessWidget {
  SongMenuFullBottomsheet(this.controller);

  SongMenuFullController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 12,
            top: 14,
            right: 12,
            bottom: 14,
          ),
          decoration: AppDecoration.fillBlack900.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL29,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  5,
                ),
                width: getHorizontalSize(
                  35,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 18,
                  top: 23,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconButton(
                      height: 38,
                      width: 38,
                      margin: getMargin(
                        bottom: 79,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgBookmarkBlack900,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            65,
                          ),
                          width: getSize(
                            65,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.red300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                4,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "lbl_renaissance".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium18,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_podval_caplella".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14,
                              ),
                              Container(
                                height: getSize(
                                  3,
                                ),
                                width: getSize(
                                  3,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 9,
                                  bottom: 5,
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
                                  left: 6,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_3_43".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomIconButton(
                      height: 38,
                      width: 38,
                      margin: getMargin(
                        bottom: 79,
                      ),
                      variant: IconButtonVariant.FillWhiteA70075,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgReply,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 29,
                ),
                padding: getPadding(
                  left: 18,
                  top: 15,
                  right: 18,
                  bottom: 15,
                ),
                decoration: AppDecoration.fillWhiteA70067.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 88,
                        top: 3,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_add_to_playlist".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 8,
                ),
                padding: getPadding(
                  left: 18,
                  top: 15,
                  right: 18,
                  bottom: 15,
                ),
                decoration: AppDecoration.fillWhiteA70067.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgUser,
                      height: getVerticalSize(
                        24,
                      ),
                      width: getHorizontalSize(
                        21,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 123,
                        top: 2,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_artist".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 8,
                ),
                padding: getPadding(
                  left: 18,
                  top: 16,
                  right: 18,
                  bottom: 16,
                ),
                decoration: AppDecoration.fillWhiteA70067.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgAlbumicon,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 116,
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_album".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 8,
                ),
                padding: getPadding(
                  left: 18,
                  top: 15,
                  right: 18,
                  bottom: 15,
                ),
                decoration: AppDecoration.fillWhiteA70067.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getVerticalSize(
                        24,
                      ),
                      width: getHorizontalSize(
                        25,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 96,
                        top: 2,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_i_don_t_like_it".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 8,
                ),
                padding: getPadding(
                  all: 18,
                ),
                decoration: AppDecoration.fillWhiteA70067.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFile,
                      height: getVerticalSize(
                        18,
                      ),
                      width: getHorizontalSize(
                        25,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 100,
                      ),
                      child: Text(
                        "lbl_song_lyrics".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 8,
                  bottom: 44,
                ),
                padding: getPadding(
                  left: 19,
                  top: 16,
                  right: 19,
                  bottom: 16,
                ),
                decoration: AppDecoration.fillWhiteA70067.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder9,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgDownloadWhiteA700,
                      height: getSize(
                        23,
                      ),
                      width: getSize(
                        23,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 103,
                        top: 1,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_download".tr,
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
      ),
    );
  }
}
