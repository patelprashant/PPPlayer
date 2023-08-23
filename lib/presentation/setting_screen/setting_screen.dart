import '../setting_screen/widgets/equalizers_item_widget.dart';
import 'controller/setting_controller.dart';
import 'models/equalizers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';

class SettingScreen extends GetWidget<SettingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(89),
                leadingWidth: 35,
                leading: AppbarImage(
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 25, top: 15, bottom: 22),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_equalizer".tr),
                actions: [
                  AppbarImage(
                      height: getSize(13),
                      width: getSize(13),
                      svgPath: ImageConstant.imgClose,
                      margin:
                          getMargin(left: 30, top: 21, right: 30, bottom: 21))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 22, right: 30, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: getVerticalSize(342),
                          child: Obx(() => ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(21));
                              },
                              itemCount: controller.settingModelObj.value
                                  .equalizersItemList.value.length,
                              itemBuilder: (context, index) {
                                EqualizersItemModel model = controller
                                    .settingModelObj
                                    .value
                                    .equalizersItemList
                                    .value[index];
                                return EqualizersItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("lbl_my_settings".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_default".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("lbl_club_music".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16TealA400)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("lbl_classical_music".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("lbl_dance_music".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Text("msg_low_frequency_gain".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      Padding(
                          padding: getPadding(top: 32, bottom: 2),
                          child: Text("msg_low_frequency_gain".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16))
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
