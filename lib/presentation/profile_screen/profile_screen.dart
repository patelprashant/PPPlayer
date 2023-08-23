import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(87),
                leadingWidth: 41,
                leading: AppbarImage(
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 31, top: 17, bottom: 20),
                    onTap: () {
                      onTapArrowleft4();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr),
                actions: [
                  AppbarImage(
                      height: getSize(13),
                      width: getSize(13),
                      svgPath: ImageConstant.imgClose,
                      margin:
                          getMargin(left: 30, top: 23, right: 30, bottom: 19))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 12, top: 25, right: 12, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(97),
                          width: getSize(97),
                          decoration: BoxDecoration(
                              color: ColorConstant.deepOrange100,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(48)))),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("lbl_erlik_bachman".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium18)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("msg_bachman_mail_com".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 48),
                              padding: getPadding(
                                  left: 109, top: 19, right: 109, bottom: 19),
                              decoration: AppDecoration.fillBlack9009f.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder9),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl_my_subscription".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular16),
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 1),
                                        child: Text("msg_valid_until_may".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular14))
                                  ]))),
                      Container(
                          margin: getMargin(top: 27),
                          padding: getPadding(
                              left: 116, top: 18, right: 116, bottom: 18),
                          decoration: AppDecoration.fillWhiteA7006b.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_restore_purchases".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16)
                              ])),
                      Container(
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 118, top: 19, right: 118, bottom: 19),
                          decoration: AppDecoration.fillWhiteA7006b.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_enter_promo_code".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16)
                              ])),
                      Container(
                          margin: getMargin(top: 8, bottom: 5),
                          padding: getPadding(
                              left: 167, top: 19, right: 167, bottom: 19),
                          decoration: AppDecoration.fillWhiteA7006b.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_quit".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16)
                              ]))
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
