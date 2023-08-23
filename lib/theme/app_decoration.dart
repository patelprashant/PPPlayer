import 'package:flutter/material.dart';
import 'package:ppplayer/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray700 => BoxDecoration(
        color: ColorConstant.blueGray700,
      );
  static BoxDecoration get txtFillWhiteA70075 => BoxDecoration(
        color: ColorConstant.whiteA70075,
      );
  static BoxDecoration get gradientYellow400DeeporangeA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            2.82,
            1.88,
          ),
          end: Alignment(
            1.87,
            -1.82,
          ),
          colors: [
            ColorConstant.yellow400,
            ColorConstant.deepOrangeA700,
          ],
        ),
      );
  static BoxDecoration get fillBlack9009f => BoxDecoration(
        color: ColorConstant.black9009f,
      );
  static BoxDecoration get fillWhiteA70067 => BoxDecoration(
        color: ColorConstant.whiteA70067,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get gradientRedA700Deeporange400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            2.86,
            1.77,
          ),
          end: Alignment(
            1.91,
            -2.02,
          ),
          colors: [
            ColorConstant.redA700,
            ColorConstant.deepOrange400,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA7006b => BoxDecoration(
        color: ColorConstant.whiteA7006b,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillWhiteA70071 => BoxDecoration(
        color: ColorConstant.whiteA70071,
      );
  static BoxDecoration get gradientLime800GreenA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            2.77,
            2.02,
          ),
          end: Alignment(
            1.96,
            -1.63,
          ),
          colors: [
            ColorConstant.lime800,
            ColorConstant.greenA400,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder13 = BorderRadius.circular(
    getHorizontalSize(
      13,
    ),
  );

  static BorderRadius customBorderTL29 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        29,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        29,
      ),
    ),
  );

  static BorderRadius roundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
