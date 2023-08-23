import '../artist_screen/widgets/songs1_item_widget.dart';
import 'controller/artist_controller.dart';
import 'models/songs1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';
import 'package:ppplayer/widgets/custom_icon_button.dart';

class ArtistScreen extends GetWidget<ArtistController> {
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
                      onTapArrowleft6();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_renaissance".tr),
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
                padding: getPadding(left: 27, right: 27, bottom: 125),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomIconButton(
                      height: 38,
                      width: 38,
                      margin: getMargin(top: 82),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgBookmarkBlack900)),
                  Padding(
                      padding: getPadding(top: 8),
                      child: Text("lbl_renaissance".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium28)),
                  Padding(
                      padding: getPadding(top: 9),
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
                                margin: getMargin(left: 4, top: 11, bottom: 4),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA70095,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(1)))),
                            Padding(
                                padding: getPadding(left: 5),
                                child: Text("lbl_23_albums".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16))
                          ])),
                  Padding(
                      padding: getPadding(left: 3, top: 89),
                      child: Obx(() => GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(227),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(15),
                                  crossAxisSpacing: getHorizontalSize(15)),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller
                              .artistModelObj.value.songs1ItemList.value.length,
                          itemBuilder: (context, index) {
                            Songs1ItemModel model = controller.artistModelObj
                                .value.songs1ItemList.value[index];
                            return Songs1ItemWidget(model);
                          })))
                ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
