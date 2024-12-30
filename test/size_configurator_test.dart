import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:size_configurator/size_configurator.dart';

void main() {
  test('SizeConfig init should set correct values', () {
    // Arrange
    final constraints = BoxConstraints(maxWidth: 500, maxHeight: 800);
    final orientation = Orientation.portrait;

    // Act
    SizeConfig().init(constraints, orientation);

    // Assert
    expect(SizeConfig.screenWidth, 500);
    expect(SizeConfig.screenHeight, 800);
    expect(SizeConfig.textMultiplier, greaterThan(0));
  });
}
