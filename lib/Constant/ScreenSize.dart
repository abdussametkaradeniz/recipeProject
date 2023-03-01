import 'dart:ui';

class ScreenSize {
  static var logicalScreenSize = window.physicalSize / window.devicePixelRatio;
  static var logicalWidth = logicalScreenSize.width;
  static var logicalHeight = logicalScreenSize.height;
}
