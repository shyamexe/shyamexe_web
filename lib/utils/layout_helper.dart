
import 'package:flutter/material.dart';
import 'device_info.dart';

class LayOutHelper{

  static int masterDataCards(context) {
    if (DeviceInfo.isDesktop(context)){
      return 3;
    }else if (DeviceInfo.isTablet(context)) {
      return 2;
    } else {
      return 1;
    }
  }

  static int orderCards(context) {
    if (DeviceInfo.isDesktop(context) || DeviceInfo.isTablet(context)) {
      return 2;
    } else {
      return 1;
    }
  }


  static double modalSheetWidth(context){
    var deviceWidth = MediaQuery.of(context).size.width;
    var dialogWidth = deviceWidth;
    if(deviceWidth>768){
      dialogWidth = 400;
    }
    return dialogWidth;
  }

  static int dashboardSplit(context, bool isTripSummary){
    if (DeviceInfo.isDesktop(context)){
      return 2;
    }else if (DeviceInfo.isTablet(context)) {
      return 2;
    } else {
      return 1;
    }
  }

  static int attachmentSplit(context){
    if (DeviceInfo.isMobile(context)){
      return 2;
    }else {
      return 3;
    }
  }

}


// Widget adaptiveLayout(context,{required Widget first, Widget? second}){
//   if(second != null){
//     if (DeviceInfo.isMobile(context)){
//       return Column(
//         children: [
//           first,
//           const SizedBox(height: 12),
//           second,
//         ],
//       );
//     } else {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(child: first),
//           const SizedBox(width: 12),
//           Expanded(child: second),
//         ],
//       );
//     }
//   }
//   return first;
// }