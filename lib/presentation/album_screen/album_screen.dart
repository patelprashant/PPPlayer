import '../album_screen/widgets/album_item_widget.dart';
import 'controller/album_controller.dart';
import 'models/album_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';
import 'package:ppplayer/widgets/custom_icon_button.dart';

class AlbumScreen extends GetWidget<AlbumController> {
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
                      onTapArrowleft7();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_wunder_king".tr),
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
                padding: getPadding(left: 30, top: 22, right: 30, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgThumbnail,
                          height: getSize(100),
                          width: getSize(100)),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("lbl_wunder_king".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium28)),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16),
                                Container(
                                    height: getSize(3),
                                    width: getSize(3),
                                    margin:
                                        getMargin(left: 4, top: 11, bottom: 5),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA70095,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1)))),
                                Padding(
                                    padding: getPadding(left: 5, bottom: 1),
                                    child: Text("lbl_2018".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular16))
                              ])),
                      Padding(
                          padding: getPadding(top: 22),
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
                      Padding(
                          padding: getPadding(top: 26),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(18));
                              },
                              itemCount: controller.albumModelObj.value
                                  .albumItemList.value.length,
                              itemBuilder: (context, index) {
                                AlbumItemModel model = controller.albumModelObj
                                    .value.albumItemList.value[index];
                                return AlbumItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
