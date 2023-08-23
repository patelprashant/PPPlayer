import '../playlist_bottomsheet/widgets/songs_item_widget.dart';
import 'controller/playlist_controller.dart';
import 'models/songs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

class PlaylistBottomsheet extends StatelessWidget {
  PlaylistBottomsheet(this.controller);

  PlaylistController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 30,
            top: 14,
            right: 30,
            bottom: 14,
          ),
          decoration: AppDecoration.fillBlack900.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL29,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  5,
                ),
                width: getHorizontalSize(
                  35,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA70082,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 35,
                  bottom: 55,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          18,
                        ),
                      );
                    },
                    itemCount: controller
                        .playlistModelObj.value.songsItemList.value.length,
                    itemBuilder: (context, index) {
                      SongsItemModel model = controller
                          .playlistModelObj.value.songsItemList.value[index];
                      return SongsItemWidget(
                        model,
                      );
                    },
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
