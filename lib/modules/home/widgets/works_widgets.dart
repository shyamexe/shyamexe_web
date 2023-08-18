// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

import 'work_tile_widget.dart';

class WorksWidgets extends StatelessWidget {
  const WorksWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WorkTileWidget(
          assetImage: 'assets/package.png',
          title: 'scrollable_tab_view package',
          tags: const ['android', 'ios', 'web'],
          gradientColors: const [
            Color(0xfff9eeff),
            Color(0xffe2d8ff),
          ],
          tagBackGround: const Color(0xffb09ee1),
          tagColor: Colors.white,
          titleColor: const Color(0xff16041e),
          device: Devices.ios.iPadAir4,
          orientation: Orientation.portrait,
        ),
        WorkTileWidget(
          assetImage: 'assets/dictionary_ss.png',
          title: '1Dictionary app',
          tags: const ['android', 'ios', 'web'],
          gradientColors: const [
            Color(0xff223376),
            Color(0xff0d0e29),
          ],
          tagBackGround: const Color(0xff445494),
          tagColor: Colors.white,
          titleColor: Colors.white,
          device: Devices.ios.iPhone13ProMax,
          orientation: Orientation.portrait,
        ),
        WorkTileWidget(
          assetImage: 'assets/wether.png',
          title: 'weather app',
          tags: const ['android', 'ios',],
          gradientColors: const [
            Color(0xff33aeaa),
            Color(0xff007991),
          ],
          tagBackGround: const Color(0xff445494),
          tagColor: Colors.white,
          titleColor: const Color(0xff16041e),
          device: Devices.ios.iPhoneSE,
          orientation: Orientation.portrait,
        ),
      ],
    );
  }
}
