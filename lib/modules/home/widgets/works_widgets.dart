// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          onTap: () async {
            await launchUrl(
                Uri.parse(
                  'https://pub.dev/packages/scrollable_tab_view',
                ),
                mode: LaunchMode.externalNonBrowserApplication);
          },
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
          onTap: () async {
            await launchUrl(
                Uri.parse(
                  'https://github.com/shyamexe/Dictionary_app_flutter_using_bloc',
                ),
                mode: LaunchMode.externalNonBrowserApplication);
          },
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
          onTap: () async {
            await launchUrl(
                Uri.parse(
                  'https://github.com/sajithlaldev/Admin-Dashbord-Demo',
                ),
                mode: LaunchMode.externalNonBrowserApplication);
          },
          assetImage: 'assets/ecoms.png',
          title: 'E Commerce Seller App',
          tags: const ['web'],
          gradientColors: const [
            Color(0xffa270b5),
            Color(0xff5e4169),
          ],
          tagBackGround: const Color(0xff33143f),
          tagColor: Colors.white,
          titleColor: Colors.white,
          orientation: Orientation.portrait,
          // device: Devices.android.mediumTablet,
          device: Devices.ios.iPadAir4,

        ),
        WorkTileWidget(
          onTap: () async {
            await launchUrl(
                Uri.parse(
                  'https://github.com/shyamexe/weather_app',
                ),
                mode: LaunchMode.externalNonBrowserApplication);
          },
          assetImage: 'assets/wether.png',
          title: 'weather app',
          tags: const [
            'android',
            'ios',
          ],
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
