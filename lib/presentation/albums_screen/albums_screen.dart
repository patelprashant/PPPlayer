import '../albums_screen/widgets/albums_item_widget.dart';
import 'controller/albums_controller.dart';
import 'models/albums_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';

class AlbumsScreen extends GetWidget<AlbumsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 30, top: 20, bottom: 17),
                    onTap: () {
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_albums".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(19),
                      svgPath: ImageConstant.imgMenu,
                      margin:
                          getMargin(left: 31, top: 21, right: 31, bottom: 18))
                ]),
            body: Container(
                width: getHorizontalSize(330),
                margin: getMargin(left: 30, top: 23, right: 31, bottom: 5),
                decoration: AppDecoration.fillBlack900,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(17));
                          },
                          itemCount: controller
                              .albumsModelObj.value.albumsItemList.value.length,
                          itemBuilder: (context, index) {
                            AlbumsItemModel model = controller.albumsModelObj
                                .value.albumsItemList.value[index];
                            return AlbumsItemWidget(model);
                          }))
                    ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
