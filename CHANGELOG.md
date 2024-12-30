# Changelog

## [0.0.1] - 2024-12-30
### Initial release
- Created `size_configurator` package for responsive UI design in Flutter.
- Implemented `SizeConfig` class for screen dimension calculations and responsive design utilities.
- Provided methods to calculate screen width, height, block size, and multipliers based on device orientation.
- Added configuration for handling different screen sizes and platforms (Android, iOS).

## [0.0.2] - 2025-1-5
### Improvements
- Refined `init` method for better platform-specific adjustments (screen size calculation for Android and iOS).
- Added `textMultiplier`, `imageSizeMultiplier`, and other scaling factors to improve UI responsiveness.
- Integrated debug logs for screen dimension outputs during initialization.

## [0.0.3] - 2025-01-15
### Bug Fixes and Updates
- Fixed calculation issues when screen height is less than 785.
- Improved mobile portrait detection for screens less than 450 pixels wide.
- Optimized platform-specific adjustments for iOS and Android.

## [0.0.4] - 2025-01-25
### New Features
- Added better support for non-portrait orientations.
- Introduced `heightMultiplier` and `widthMultiplier` for more granular control of UI element scaling.
- Added example usage in the README.md file for easier integration into projects.

## [0.0.5] - 2025-2-5
### Patch
- Minor bug fixes for mobile portrait handling and text multiplier calculation.
- Enhanced documentation for better clarity on usage and setup.

