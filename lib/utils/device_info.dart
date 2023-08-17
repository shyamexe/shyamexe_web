import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeviceInfo {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
          MediaQuery.of(context).size.width <= 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1024;

  static bool isWebPlatform() {
    if (kIsWeb) {
      return true;
    }
    return false;
  }

  static bool isMobileNative() {
    if (!kIsWeb) {
      if (Platform.isAndroid || Platform.isIOS) {
        return true;
      }
    }
    return false;
  }


}