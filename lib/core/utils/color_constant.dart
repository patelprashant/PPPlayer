import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#87ad6e');

  static Color red900 = fromHex('#a80000');

  static Color black9009f = fromHex('#9f000000');

  static Color red300 = fromHex('#b27759');

  static Color whiteA70095 = fromHex('#95ffffff');

  static Color deepPurple300 = fromHex('#8875ad');

  static Color green400 = fromHex('#56d384');

  static Color red100 = fromHex('#fddfca');

  static Color greenA400 = fromHex('#0fd890');

  static Color whiteA70071 = fromHex('#71ffffff');

  static Color lightGreen900 = fromHex('#437c00');

  static Color yellow400 = fromHex('#fdf04f');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#feb935');

  static Color deepOrange900 = fromHex('#a62900');

  static Color gray50001 = fromHex('#989e81');

  static Color teal900 = fromHex('#03373f');

  static Color deepOrangeA700 = fromHex('#f21300');

  static Color blueGray700 = fromHex('#2e635b');

  static Color deepOrange400 = fromHex('#fd764c');

  static Color cyanA700 = fromHex('#1aabcf');

  static Color redA700 = fromHex('#fc000a');

  static Color whiteA7006b = fromHex('#6bffffff');

  static Color deepOrange100 = fromHex('#fecba8');

  static Color redA20001 = fromHex('#f74a53');

  static Color pink200 = fromHex('#ed90c9');

  static Color gray500 = fromHex('#a69c92');

  static Color blueGray400 = fromHex('#8a8a8a');

  static Color blueGray600 = fromHex('#447b77');

  static Color redA200 = fromHex('#fc5e68');

  static Color lime800 = fromHex('#8bb400');

  static Color gray800 = fromHex('#665539');

  static Color lime900 = fromHex('#a05624');

  static Color gray900 = fromHex('#121718');

  static Color gray300 = fromHex('#d9dedf');

  static Color black900A6 = fromHex('#a6000000');

  static Color whiteA70082 = fromHex('#82ffffff');

  static Color tealA400 = fromHex('#2ad78b');

  static Color orange50 = fromHex('#ffebd0');

  static Color whiteA70067 = fromHex('#67ffffff');

  static Color blueGray40002 = fromHex('#888888');

  static Color blueGray40001 = fromHex('#8b8b8b');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
