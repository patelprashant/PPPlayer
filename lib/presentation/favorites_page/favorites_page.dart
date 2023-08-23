import 'controller/favorites_controller.dart';
import 'models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavoritesPage extends StatelessWidget {
  FavoritesController controller =
      Get.put(FavoritesController(FavoritesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(87),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 30, top: 21, bottom: 16),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_favourites".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgMenu,
                      margin:
                          getMargin(left: 30, top: 22, right: 30, bottom: 17))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 12, top: 37, right: 12, bottom: 37),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 18, top: 24, right: 18, bottom: 24),
                          decoration: AppDecoration
                              .gradientYellow400DeeporangeA700
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 75, bottom: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_did_you_like_it".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoMedium28),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("lbl_843_tracks".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlayWhiteA700,
                                    height: getSize(59),
                                    width: getSize(59),
                                    margin: getMargin(top: 73))
                              ])),
                      Padding(
                          padding: getPadding(top: 21, bottom: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 18,
                                        top: 15,
                                        right: 18,
                                        bottom: 15),
                                    decoration: AppDecoration.fillWhiteA70067
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMusicWhiteA700,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(19),
                                              margin: getMargin(top: 1)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 121, top: 1, bottom: 5),
                                              child: Text("lbl_tracks".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16))
                                        ])),
                                Container(
                                    margin: getMargin(top: 8),
                                    padding: getPadding(
                                        left: 18,
                                        top: 15,
                                        right: 18,
                                        bottom: 15),
                                    decoration: AppDecoration.fillWhiteA70067
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgUser,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(21),
                                              margin: getMargin(top: 1)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 124, top: 2, bottom: 5),
                                              child: Text("lbl_artist".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16))
                                        ])),
                                Container(
                                    margin: getMargin(top: 8),
                                    padding: getPadding(
                                        left: 18,
                                        top: 16,
                                        right: 18,
                                        bottom: 16),
                                    decoration: AppDecoration.fillWhiteA70067
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgAlbumicon,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(top: 1)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 117, top: 1, bottom: 4),
                                              child: Text("lbl_album".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16))
                                        ])),
                                Container(
                                    margin: getMargin(top: 8),
                                    padding: getPadding(all: 18),
                                    decoration: AppDecoration.fillWhiteA70067
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgFile,
                                          height: getVerticalSize(18),
                                          width: getHorizontalSize(25),
                                          margin: getMargin(top: 1)),
                                      Padding(
                                          padding: getPadding(left: 109),
                                          child: Text("lbl_playlists".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanBold16))
                                    ])),
                                Container(
                                    margin: getMargin(top: 8),
                                    padding: getPadding(
                                        left: 19,
                                        top: 16,
                                        right: 19,
                                        bottom: 16),
                                    decoration: AppDecoration.fillWhiteA70067
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder9),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgDownloadWhiteA700,
                                              height: getSize(23),
                                              width: getSize(23)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 103, bottom: 4),
                                              child: Text("lbl_download".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanBold16))
                                        ]))
                              ]))
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
