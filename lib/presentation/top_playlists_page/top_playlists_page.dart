import '../top_playlists_page/widgets/plays_item_widget.dart';
import 'controller/top_playlists_controller.dart';
import 'models/plays_item_model.dart';
import 'models/top_playlists_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TopPlaylistsPage extends StatelessWidget {
  TopPlaylistsController controller =
      Get.put(TopPlaylistsController(TopPlaylistsModel().obs));

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
                      onTapArrowleft1();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_top_playlists".tr),
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
                decoration: AppDecoration.fillBlack900,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 12, top: 8, right: 12),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(18));
                              },
                              itemCount: controller.topPlaylistsModelObj.value
                                  .playsItemList.value.length,
                              itemBuilder: (context, index) {
                                PlaysItemModel model = controller
                                    .topPlaylistsModelObj
                                    .value
                                    .playsItemList
                                    .value[index];
                                return PlaysItemWidget(model);
                              }))),
                      Spacer()
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
