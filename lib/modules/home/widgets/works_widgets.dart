// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shyamexe/config/constants/strings.dart';
import 'package:shyamexe/modules/work_details/model/work_details_model.dart';
import 'package:shyamexe/modules/work_details/work_details.dart';

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
            isLapTop: false,
            onTap: () {
              
                context.push(
                  Uri(path: WorkDetails.routeName,queryParameters:  WorkDetailsModel(
                    iconPath: 'assets/icons/playstore.png',
                    title: '"Easily Organize and Manage Your Files, Offline"',
                    discription:
                        'This app leverages Android\'s modern folder structure and the Storage Access Framework (SAF) API to streamline file and folder management on your device. It simplifies tasks like viewing, organizing, editing, moving, and sharing files, making file management effortless and efficient.',
                    linkTitle: 'playstore',
                    linkSubTitle: 'This app is now available on playstore',
                    webLink:
                        'https://play.google.com/store/apps/details?id=com.shyamexe.securedocs',
                    markdownDisc: MD.secureDoc,
                  ).toMap()).toString()
              
              );
            },
            assetImage: 'assets/securedoc.png',
            title: 'SecureDocs',
            tags: const ['Android'],
            gradientColors: const [
              Color(0xffA7BFE8),
              Color(0xff6190E8),
            ],
            tagBackGround: const Color(0xff35518a),
            tagColor: Colors.white,
            titleColor: const Color(0xff16041e),
            device: Devices.android.samsungGalaxyS20,
            orientation: Orientation.landscape,
            discription:
                'SecureDocs Manager is the most secure and convenient way to store and manage your files, offline'),
        WorkTileWidget(
          isLapTop: false,
          onTap: () {
            
                context.push(
                  Uri(path:WorkDetails.routeName,queryParameters: WorkDetailsModel(
                    iconPath: 'assets/icons/githublogo.png',
                    title: '"Mason reusable bricks for efficient project scaffolding for Flutter."',
                    discription:
                        'Streamline Flutter project setup and expansion with Mason Bricks: a collection of reusable templates and generators for efficient code scaffolding',
                    linkTitle: 'github',
                    linkSubTitle: 'This Cli is available on github',
                    webLink:
                        'https://github.com/shyamexe/bricks-cli',
                    markdownDisc: MD.brickCli,
                  ).toMap()).toString(),
              
              );
            
          },
          assetImage: 'assets/cli.png',
          title: 'bricks-cli ',
          tags: const ['reusable code blocks'],
          gradientColors: const [
            Color(0xffe9f0aa),
            Color(0xff99aceb),
          ],
          tagBackGround: const Color(0xff35518a),
          tagColor: Colors.white,
          titleColor: const Color(0xff16041e),
          device: Devices.ios.iPadAir4,
          orientation: Orientation.landscape,
          discription:
              'Streamline Flutter project setup and expansion with Mason Bricks: a collection of reusable templates and generators for efficient code scaffolding',
        ),
        WorkTileWidget(
          onTap: () {
            
                context.push(
                  Uri(path:WorkDetails.routeName,queryParameters: WorkDetailsModel(
                    iconPath: 'assets/icons/pubdev.png',
                    title: '"This package provides a vertical scrollable tab bar widget"',
                    discription:
                        'This Flutter package provides a vertical scrollable tab bar widget that allows you to display resizable tabs',
                    linkTitle: 'pub.dev',
                    linkSubTitle: 'This package is available on pub.dev',
                    webLink:
                        'https://pub.dev/packages/scrollable_tab_view',
                    markdownDisc: MD.scrollableTabBar,
                
                ).toMap()).toString()  ,
              );
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
          discription:
              'This Flutter package provides a vertical scrollable tab bar widget that allows you to display resizable tabs',
        ),
        WorkTileWidget(
          onTap: () {
            
                context.push(
                  Uri(path:WorkDetails.routeName,queryParameters:  WorkDetailsModel(
                    iconPath: 'assets/icons/githublogo.png',
                    title: '"simple dictionary app in flutter using bloc patern"',
                    discription:
                        'This is a dictionary app built with flutter using the bloc pattern. It uses the Dictionary API and Datamuse API to fetch data. The app has features like audio pronunciation, synonyms, antonyms, examples and share options. It also has a dark mode feature',
                    linkTitle: 'github',
                    linkSubTitle: 'This app is available on github',
                    webLink:
                        'https://github.com/shyamexe/Dictionary_app_flutter_using_bloc',
                    markdownDisc: MD.dictionary,
                 
                ).toMap()).toString(),
              );
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
          discription: 'A simple dictionary app in flutter using bloc patern',
        ),
        WorkTileWidget(
          onTap: () {
            
                context.push(
                  Uri(path:WorkDetails.routeName,queryParameters: WorkDetailsModel(
                    iconPath: 'assets/icons/web.png',
                    title: '"simple dictionary app in flutter using bloc patern"',
                    discription:
                        'This is a dictionary app built with flutter using the bloc pattern. It uses the Dictionary API and Datamuse API to fetch data. The app has features like audio pronunciation, synonyms, antonyms, examples and share options. It also has a dark mode feature',
                    linkTitle: 'web',
                    linkSubTitle: 'site is live',
                    webLink:
                        'https://github.com/sajithlaldev/Admin-Dashbord-Demo',
                    markdownDisc: MD.adminDAsh,
                  ).toMap()).toString(),
                
              );

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
          discription: '',
        ),
        WorkTileWidget(
          onTap: ()  {
             
                context.push(
                  Uri(path:WorkDetails.routeName,queryParameters:  WorkDetailsModel(
                    iconPath: 'assets/icons/githublogo.png',
                    title: '"a simple weather app built with Flutter"',
                    discription:
                        'This is a simple weather app built with Flutter that displays the current weather for a given location. The app uses the weatherapi.com API to fetch the weather data and displays it in a user-friendly interface.',
                    linkTitle: 'github',
                    linkSubTitle: 'This app is available on github',
                    webLink:
                        'https://github.com/shyamexe/weather_app',
                    markdownDisc: MD.wetherapp,
                  ).toMap()).toString(),
                
              );
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
          discription:'This is a simple weather app built with Flutter that displays the current weather for a given location',
        ),
      ],
    );
  }
}
