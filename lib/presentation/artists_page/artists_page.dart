import '../artists_page/widgets/artists_item_widget.dart';
import 'controller/artists_controller.dart';
import 'models/artists_item_model.dart';
import 'models/artists_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/app_bar/appbar_image.dart';
import 'package:ppplayer/widgets/app_bar/appbar_title.dart';
import 'package:ppplayer/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ArtistsPage extends StatelessWidget {
  ArtistsController controller = Get.put(ArtistsController(ArtistsModel().obs));

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
                      onTapArrowleft5();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_artists".tr),
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
                decoration: AppDecoration.fillBlack900,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 30, top: 16, right: 30),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(17));
                              },
                              itemCount: controller.artistsModelObj.value
                                  .artistsItemList.value.length,
                              itemBuilder: (context, index) {
                                ArtistsItemModel model = controller
                                    .artistsModelObj
                                    .value
                                    .artistsItemList
                                    .value[index];
                                return ArtistsItemWidget(model);
                              }))),
                      Spacer()
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
