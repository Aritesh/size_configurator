import 'dart:io';
import 'package:flutter/material.dart';

/// A utility class to handle responsive UI design by calculating
/// screen dimensions and scaling text, images, and other elements proportionally.
class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockWidth = 0;
  static double blockHeight = 0;
  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  /// Initializes the `SizeConfig` with screen dimensions and orientation.
  ///
  /// Call this method inside a `LayoutBuilder` and `OrientationBuilder` for accurate
  /// calculations.
  void init(BoxConstraints constraints, Orientation orientation) {
    isPortrait = orientation == Orientation.portrait;

    if (isPortrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
      isMobilePortrait = screenWidth < 450;
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
      isMobilePortrait = false;
    }

    if (Platform.isIOS) {
      screenWidth /= 1.1;
    }

    if (screenHeight > 1000) {
      blockWidth = screenWidth / 110 / 2;
      blockHeight = screenHeight / 110 / 2;
    } else if (screenHeight > 785) {
      blockWidth = screenWidth / 100 / 2;
      blockHeight = screenHeight / 110 / 2;
    } else {
      blockWidth = screenWidth / 100 / 2;
      blockHeight = screenHeight / 100 / 2;
    }

    textMultiplier = blockHeight + blockWidth;
    heightMultiplier = blockHeight;
    widthMultiplier = blockWidth;
  }
}
