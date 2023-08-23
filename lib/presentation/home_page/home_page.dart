import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';
import 'package:ppplayer/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 28,
                      top: 43,
                      right: 22,
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              right: 7,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "lbl_dashboard".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular20,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgMenu,
                                  height: getVerticalSize(
                                    16,
                                  ),
                                  width: getHorizontalSize(
                                    19,
                                  ),
                                  margin: getMargin(
                                    left: 97,
                                    top: 6,
                                    bottom: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 52,
                          ),
                          child: Text(
                            "lbl_listen_to_music".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium28,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "msg_without_restrictions".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium28,
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            42,
                          ),
                          width: getHorizontalSize(
                            236,
                          ),
                          text: "lbl_trial_version".tr,
                          margin: getMargin(
                            top: 44,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 40,
                          ),
                          child: Text(
                            "msg_free_for_3_months".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 47,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_new_releases".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoBold26,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                  bottom: 8,
                                ),
                                child: Text(
                                  "lbl_view_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    right: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          181,
                                        ),
                                        width: getHorizontalSize(
                                          159,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.yellow700,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "lbl_urgent_siege".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium18,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_damned_anthem".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    left: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          181,
                                        ),
                                        width: getHorizontalSize(
                                          159,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.green400,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "lbl_urgent_siege".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium18,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_damned_anthem".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
