import '../controller/artist_controller.dart';
import '../models/songs1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

// ignore: must_be_immutable
class Songs1ItemWidget extends StatelessWidget {
  Songs1ItemWidget(this.songs1ItemModelObj);

  Songs1ItemModel songs1ItemModelObj;

  var controller = Get.find<ArtistController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
