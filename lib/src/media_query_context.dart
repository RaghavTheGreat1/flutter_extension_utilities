import 'dart:ui' as ui;

import 'package:flutter/material.dart';

extension MediaQueryContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  MediaQueryData? get maybeMediaQueryOf => MediaQuery.maybeOf(this);

  /// The size of the media in logical pixels (e.g, the size of the screen).
  ///
  /// Logical pixels are roughly the same visual size across devices. Physical
  /// pixels are the size of the actual hardware pixels on the device. The
  /// number of physical pixels per logical pixel is described by the
  /// [devicePixelRatio].
  ///
  /// ## Troubleshooting
  ///
  /// It is considered bad practice to cache and later use the size returned
  /// by `MediaQuery.of(context).size`. It will make the application non responsive
  /// and might lead to unexpected behaviors.
  /// For instance, during startup, especially in release mode, the first returned
  /// size might be (0,0). The size will be updated when the native platform
  /// reports the actual resolution.
  ///
  /// See the article on [Creating responsive and adaptive
  /// apps](https://docs.flutter.dev/development/ui/layout/adaptive-responsive)
  /// for an introduction.
  ///
  /// See also:
  ///
  ///  * [FlutterView.physicalSize], which returns the size in physical pixels.
  ///  * [MediaQuery.sizeOf], a method to find and depend on the size defined
  ///    for a [BuildContext].
  Size get size => mediaQuery.size;

  /// Returns size for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.size] property of the ancestor [MediaQuery] changes.
  Size get sizeOf => MediaQuery.sizeOf(this);

  /// Returns size for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.size] property of the ancestor [MediaQuery] changes.
  Size? get maybeSizeOf => MediaQuery.maybeSizeOf(this);

  /// The orientation of the media (e.g., whether the device is in landscape or
  /// portrait mode).
  Orientation get orientation => mediaQuery.orientation;

  /// Returns orientation for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.orientation] property of the ancestor [MediaQuery] changes.
  Orientation get orientationOf => MediaQuery.orientationOf(this);

  /// Returns orientation for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.orientation] property of the ancestor [MediaQuery] changes.
  Orientation? get maybeOrientationOf => MediaQuery.maybeOrientationOf(this);

  /// The parts of the display that are partially obscured by system UI,
  /// typically by the hardware display "notches" or the system status bar.
  ///
  /// If you consumed this padding (e.g. by building a widget that envelops or
  /// accounts for this padding in its layout in such a way that children are
  /// no longer exposed to this padding), you should remove this padding
  /// for subsequent descendants in the widget tree by inserting a new
  /// [MediaQuery] widget using the [MediaQuery.removePadding] factory.
  ///
  /// Padding is derived from the values of [viewInsets] and [viewPadding].
  ///
  /// {@youtube 560 315 https://www.youtube.com/watch?v=ceCo8U0XHqw}
  ///
  /// See also:
  ///
  ///  * [FlutterView], which provides some additional detail about this
  ///    property and how it relates to [viewInsets] and [viewPadding].
  ///  * [SafeArea], a widget that consumes this padding with a [Padding] widget
  ///    and automatically removes it from the [MediaQuery] for its child.
  EdgeInsets get padding => mediaQuery.padding;

  /// Returns padding for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.padding] property of the ancestor [MediaQuery] changes.
  EdgeInsets get paddingOf => MediaQuery.paddingOf(this);

  /// Returns viewInsets for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.viewInsets] property of the ancestor [MediaQuery] changes.
  EdgeInsets? get maybePaddingOf => MediaQuery.maybePaddingOf(this);

  /// The parts of the display that are completely obscured by system UI,
  /// typically by the device's keyboard.
  ///
  /// When a mobile device's keyboard is visible `viewInsets.bottom`
  /// corresponds to the top of the keyboard.
  ///
  /// This value is independent of the [padding] and [viewPadding]. viewPadding
  /// is measured from the edges of the [MediaQuery] widget's bounds. Padding is
  /// calculated based on the viewPadding and viewInsets. The bounds of the top
  /// level MediaQuery created by [WidgetsApp] are the same as the window
  /// (often the mobile device screen) that contains the app.
  ///
  /// {@youtube 560 315 https://www.youtube.com/watch?v=ceCo8U0XHqw}
  ///
  /// See also:
  ///
  ///  * [FlutterView], which provides some additional detail about this property
  ///    and how it relates to [padding] and [viewPadding].
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  /// Returns viewInsets for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.viewInsets] property of the ancestor [MediaQuery] changes.
  EdgeInsets get viewInsetsOf => MediaQuery.viewInsetsOf(this);

  /// Returns viewInsets for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.viewInsets] property of the ancestor [MediaQuery] changes.
  EdgeInsets? get maybeViewInsetsOf => MediaQuery.maybeViewInsetsOf(this);

  /// The parts of the display that are partially obscured by system UI,
  /// typically by the hardware display "notches" or the system status bar.
  ///
  /// This value remains the same regardless of whether the system is reporting
  /// other obstructions in the same physical area of the screen. For example, a
  /// software keyboard on the bottom of the screen that may cover and consume
  /// the same area that requires bottom padding will not affect this value.
  ///
  /// This value is independent of the [padding] and [viewInsets]: their values
  /// are measured from the edges of the [MediaQuery] widget's bounds. The
  /// bounds of the top level MediaQuery created by [WidgetsApp] are the
  /// same as the window that contains the app. On mobile devices, this will
  /// typically be the full screen.
  ///
  /// {@youtube 560 315 https://www.youtube.com/watch?v=ceCo8U0XHqw}
  ///
  /// See also:
  ///
  ///  * [FlutterView], which provides some additional detail about this
  ///    property and how it relates to [padding] and [viewInsets].
  EdgeInsets get viewPadding => mediaQuery.viewPadding;

  /// Returns viewPadding for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.viewPadding] property of the ancestor [MediaQuery] changes.
  EdgeInsets get viewPaddingOf => MediaQuery.viewPaddingOf(this);

  /// Returns viewPadding for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.viewPadding] property of the ancestor [MediaQuery] changes.
  EdgeInsets? get maybeViewPaddingOf => MediaQuery.maybeViewPaddingOf(this);

  /// The number of device pixels for each logical pixel. This number might not
  /// be a power of two. Indeed, it might not even be an integer. For example,
  /// the Nexus 6 has a device pixel ratio of 3.5.
  double get devicePixelRatio => mediaQuery.devicePixelRatio;

  /// Returns devicePixelRatio for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.devicePixelRatio] property of the ancestor [MediaQuery] changes.
  double get devicePixelRatioOf => MediaQuery.devicePixelRatioOf(this);

  /// Returns devicePixelRatio for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.devicePixelRatio] property of the ancestor [MediaQuery] changes.
  double? get maybeDevicePixelRatioOf =>
      MediaQuery.maybeDevicePixelRatioOf(this);

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  ///
  /// See also:
  ///
  ///  * [MediaQuery.textScaleFactorOf], a method to find and depend on the
  ///    textScaleFactor defined for a [BuildContext].
  double get textScaleFactor => mediaQuery.textScaleFactor;

  /// Returns textScaleFactor for the nearest MediaQuery ancestor or
  /// 1.0, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.textScaleFactor] property of the ancestor [MediaQuery] changes.
  double get textScaleFactorOf => MediaQuery.textScaleFactorOf(this);

  /// Returns textScaleFactor for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.textScaleFactor] property of the ancestor [MediaQuery] changes.
  double? get maybeTextScaleFactorOf => MediaQuery.maybeTextScaleFactorOf(this);

  /// Whether the user is using an accessibility service like TalkBack or
  /// VoiceOver to interact with the application.
  ///
  /// When this setting is true, features such as timeouts should be disabled or
  /// have minimum durations increased.
  ///
  /// See also:
  ///
  ///  * [dart:ui.PlatformDispatcher.accessibilityFeatures], where the setting originates.
  bool get accessibleNavigation => mediaQuery.accessibleNavigation;

  /// Returns accessibleNavigationOf for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.accessibleNavigation] property of the ancestor [MediaQuery] changes.
  bool get accessibleNavigationOf => MediaQuery.accessibleNavigationOf(this);

  /// Returns accessibleNavigation for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.accessibleNavigation] property of the ancestor [MediaQuery] changes.
  bool? get maybeAccessibleNavigationOf =>
      MediaQuery.maybeAccessibleNavigationOf(this);

  /// Whether to use 24-hour format when formatting time.
  ///
  /// The behavior of this flag is different across platforms:
  ///
  /// - On Android this flag is reported directly from the user settings called
  ///   "Use 24-hour format". It applies to any locale used by the application,
  ///   whether it is the system-wide locale, or the custom locale set by the
  ///   application.
  /// - On iOS this flag is set to true when the user setting called "24-Hour
  ///   Time" is set or the system-wide locale's default uses 24-hour
  ///   formatting.
  bool get alwaysUse24HourFormat => mediaQuery.alwaysUse24HourFormat;

  /// Returns alwaysUse for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.devicePixelRatio] property of the ancestor [MediaQuery] changes.
  bool get alwaysUse24HourFormatOf => MediaQuery.alwaysUse24HourFormatOf(this);

  /// Returns alwaysUse24HourFormat for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.alwaysUse24HourFormat] property of the ancestor [MediaQuery] changes.
  bool? get maybeAlwaysUse24HourFormatOf =>
      MediaQuery.maybeAlwaysUse24HourFormatOf(this);

  /// Whether the platform is requesting that text be drawn with a bold font
  /// weight.
  ///
  /// See also:
  ///
  ///  * [dart:ui.PlatformDispatcher.accessibilityFeatures], where the setting
  ///    originates.
  bool get boldText => mediaQuery.boldText;

  /// Returns the boldText accessibility setting for the nearest MediaQuery
  /// ancestor or false, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.boldText] property of the ancestor [MediaQuery] changes.
  bool get boldTextOf => MediaQuery.boldTextOf(this);

  /// Returns the boldText accessibility setting for the nearest MediaQuery
  /// ancestor or null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.boldText] property of the ancestor [MediaQuery] changes.
  bool? get maybeBoldTextOf => MediaQuery.maybeBoldTextOf(this);

  /// Returns disableAnimations for the nearest MediaQuery ancestor or
  /// [Brightness.light], if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.disableAnimations] property of the ancestor
  /// [MediaQuery] changes.
  bool get disableAnimations => mediaQuery.disableAnimations;

  /// Returns disableAnimations for the nearest MediaQuery ancestor or
  /// [Brightness.light], if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.disableAnimations] property of the ancestor
  /// [MediaQuery] changes.
  bool get disableAnimationsOf => MediaQuery.disableAnimationsOf(this);

  /// Returns disableAnimations for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.disableAnimations] property of the ancestor [MediaQuery] changes.
  bool? get maybeDisableAnimationsOf =>
      MediaQuery.maybeDisableAnimationsOf(this);

  /// Whether the device is inverting the colors of the platform.
  ///
  /// This flag is currently only updated on iOS devices.
  ///
  /// See also:
  ///
  ///  * [dart:ui.PlatformDispatcher.accessibilityFeatures], where the setting
  ///    originates.
  bool get invertColors => mediaQuery.invertColors;

  /// Returns invertColorsOf for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.invertColors] property of the ancestor [MediaQuery] changes.
  bool get invertColorsOf => MediaQuery.invertColorsOf(this);

  /// Returns invertColors for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.invertColors] property of the ancestor [MediaQuery] changes.
  bool? get maybeInvertColorsOf => MediaQuery.maybeInvertColorsOf(this);

  /// Whether the user requested a high contrast between foreground and background
  /// content on iOS, via Settings -> Accessibility -> Increase Contrast.
  ///
  /// This flag is currently only updated on iOS devices that are running iOS 13
  /// or above.
  bool get highContrast => mediaQuery.highContrast;

  /// Returns highContrast for the nearest MediaQuery ancestor or false, if no
  /// such ancestor exists.
  ///
  /// See also:
  ///
  ///  * [MediaQueryData.highContrast], which indicates the platform's
  ///    desire to increase contrast.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.highContrast] property of the ancestor [MediaQuery] changes.
  bool get highContrastOf => MediaQuery.highContrastOf(this);

  /// Returns highContrast for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.highContrast] property of the ancestor [MediaQuery] changes.
  bool? get maybeHighContrastOf => MediaQuery.maybeHighContrastOf(this);

  /// The areas along the edges of the display where the system consumes
  /// certain input events and blocks delivery of those events to the app.
  ///
  /// Starting with Android Q, simple swipe gestures that start within the
  /// [systemGestureInsets] areas are used by the system for page navigation
  /// and may not be delivered to the app. Taps and swipe gestures that begin
  /// with a long-press are delivered to the app, but simple press-drag-release
  /// swipe gestures which begin within the area defined by [systemGestureInsets]
  /// may not be.
  ///
  /// Apps should avoid locating gesture detectors within the system gesture
  /// insets area. Apps should feel free to put visual elements within
  /// this area.
  ///
  /// This property is currently only expected to be set to a non-default value
  /// on Android starting with version Q.
  ///
  /// {@tool dartpad}
  /// For apps that might be deployed on Android Q devices with full gesture
  /// navigation enabled, use [systemGestureInsets] with [Padding]
  /// to avoid having the left and right edges of the [Slider] from appearing
  /// within the area reserved for system gesture navigation.
  ///
  /// By default, [Slider]s expand to fill the available width. So, we pad the
  /// left and right sides.
  ///
  /// ** See code in examples/api/lib/widgets/media_query/media_query_data.system_gesture_insets.0.dart **
  /// {@end-tool}
  EdgeInsets get systemGestureInsets => mediaQuery.systemGestureInsets;

  /// Returns systemGestureInsets for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.systemGestureInsets] property of the ancestor [MediaQuery] changes.
  EdgeInsets get systemGestureInsetsOf =>
      MediaQuery.systemGestureInsetsOf(this);

  /// Returns systemGestureInsets for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.systemGestureInsets] property of the ancestor [MediaQuery] changes.
  EdgeInsets? get maybeSystemGestureInsetsOf =>
      MediaQuery.maybeSystemGestureInsetsOf(this);

  /// {@macro dart.ui.ViewConfiguration.displayFeatures}
  ///
  /// See also:
  ///
  ///  * [ui.DisplayFeatureType], which lists the different types of
  ///  display features and explains the differences between them.
  ///  * [ui.DisplayFeatureState], which lists the possible states for
  ///  folding features ([ui.DisplayFeatureType.fold] and
  ///  [ui.DisplayFeatureType.hinge]).
  List<ui.DisplayFeature> get displayFeatures => mediaQuery.displayFeatures;

  /// Returns displayFeatures for the nearest MediaQuery ancestor or
  /// throws an exception, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.displayFeatures] property of the ancestor [MediaQuery] changes.
  List<ui.DisplayFeature> get displayFeaturesOf =>
      MediaQuery.displayFeaturesOf(this);

  /// Returns displayFeatures for the nearest MediaQuery ancestor or
  /// null, if no such ancestor exists.
  ///
  /// Use of this method will cause the given [context] to rebuild any time that
  /// the [MediaQueryData.displayFeatures] property of the ancestor [MediaQuery] changes.
  List<ui.DisplayFeature>? get maybeDisplayFeaturesOf =>
      MediaQuery.maybeDisplayFeaturesOf(this);
}
