import '../list_screen/widgets/list_item_widget.dart';
import 'controller/list_controller.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';
import 'package:ppplayer/widgets/custom_icon_button.dart';

class ListScreen extends GetWidget<ListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(89),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 30, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleft8();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_playlists".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgMenu,
                      margin:
                          getMargin(left: 30, top: 20, right: 30, bottom: 19))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 18, right: 30, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(136),
                          width: getSize(136),
                          decoration: BoxDecoration(
                              color: ColorConstant.redA20001,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(68)))),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_renaissance".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium28)),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_843_tracks".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16),
                                Container(
                                    height: getSize(3),
                                    width: getSize(3),
                                    margin:
                                        getMargin(left: 4, top: 11, bottom: 4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA70095,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1)))),
                                Padding(
                                    padding: getPadding(left: 5),
                                    child: Text("lbl_23_hours".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular16))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 38,
                                    width: 38,
                                    margin: getMargin(top: 16, bottom: 15),
                                    variant: IconButtonVariant.FillWhiteA70075,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgReply)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgPlayWhiteA70069x69,
                                    height: getSize(69),
                                    width: getSize(69),
                                    margin: getMargin(left: 26)),
                                CustomIconButton(
                                    height: 38,
                                    width: 38,
                                    margin: getMargin(
                                        left: 26, top: 16, bottom: 15),
                                    variant: IconButtonVariant.FillWhiteA70075,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgBookmarkWhiteA700))
                              ])),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 146),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(19));
                              },
                              itemCount: controller
                                  .listModelObj.value.listItemList.value.length,
                              itemBuilder: (context, index) {
                                ListItemModel model = controller.listModelObj
                                    .value.listItemList.value[index];
                                return ListItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
