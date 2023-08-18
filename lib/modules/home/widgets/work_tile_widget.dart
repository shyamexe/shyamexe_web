// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shyamexe/utils/layout_helper.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WorkTileWidget extends StatelessWidget {
  final String title;
  final List<String> tags;
  final List<Color> gradientColors;
  final Color titleColor;
  final Color tagColor;
  final Color tagBackGround;
  final String assetImage;
  final DeviceInfo device;
  final Orientation orientation;

  WorkTileWidget({
    Key? key,
    required this.title,
    required this.tags,
    required this.gradientColors,
    required this.titleColor,
    required this.tagColor,
    required this.tagBackGround,
    required this.assetImage,
    required this.device,
    required this.orientation,
  }) : super(key: key);

  final ValueNotifier<Matrix4> transformNotifier =
      ValueNotifier(Matrix4.identity());

  @override
  Widget build(BuildContext context) {
    if (LayOutHelper.masterDataCards(context) == 1) {
      return VisibilityDetector(
        key: Key(title),
        onVisibilityChanged: (visibilityInfo) {
          debugPrint(
              'Widget ${visibilityInfo.key} is ${visibilityInfo.visibleFraction} visible');
          if (visibilityInfo.visibleFraction == 1) {
            transformNotifier.value = Matrix4.identity()..translate(0, -40, 0);
          } else {
            transformNotifier.value = Matrix4.identity();
          }
        },
        child: ChildWidget(
          transformNotifier: transformNotifier,
          gradientColors: gradientColors,
          device: device,
          assetImage: assetImage,
          title: title,
          titleColor: titleColor,
          tags: tags,
          tagBackGround: tagBackGround,
          tagColor: tagColor,
        ),
      );
    } else {
      return MouseRegion(
        cursor: MouseCursor.uncontrolled,
        onEnter: (event) {
          transformNotifier.value = Matrix4.identity()..translate(0, -40, 0);
        },
        onExit: (event) {
          transformNotifier.value = Matrix4.identity();
        },
        child: ChildWidget(
          transformNotifier: transformNotifier,
          gradientColors: gradientColors,
          device: device,
          assetImage: assetImage,
          title: title,
          titleColor: titleColor,
          tags: tags,
          tagBackGround: tagBackGround,
          tagColor: tagColor,
        ),
      );
    }
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({
    super.key,
    required this.transformNotifier,
    required this.gradientColors,
    required this.device,
    required this.assetImage,
    required this.title,
    required this.titleColor,
    required this.tags,
    required this.tagBackGround,
    required this.tagColor,
  });

  final ValueNotifier<Matrix4> transformNotifier;
  final List<Color> gradientColors;
  final DeviceInfo device;
  final String assetImage;
  final String title;
  final Color titleColor;
  final List<String> tags;
  final Color tagBackGround;
  final Color tagColor;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Matrix4>(
        valueListenable: transformNotifier,
        builder: (_, transform, __) {
          return Container(
              height: LayOutHelper.masterDataCards(context) == 3 ? 450 : 350,
              margin: EdgeInsets.symmetric(
                  horizontal: LayOutHelper.masterDataCards(context) * 50,
                  vertical: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: transform == Matrix4.identity()
                    ? []
                    : [
                        BoxShadow(
                            color: gradientColors.first.withOpacity(.8),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(2, 0))
                      ],
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: gradientColors,
                ),
              ),
              child: LayoutBuilder(
                builder: (ctx, size) {
                  return Stack(
                    children: [
                      Positioned(
                        top: size.maxHeight / 2,
                        child: AnimatedContainer(
                          height: size.maxHeight,
                          width: size.maxWidth,
                          duration: const Duration(milliseconds: 300),
                          transform: transform,
                          child: SizedBox(
                            child: DeviceFrame(
                              device: device,
                              isFrameVisible: true,
                              orientation: Orientation.portrait,
                              screen: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(assetImage),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: LayOutHelper.masterDataCards(context) == 3
                            ? Alignment.bottomLeft
                            : Alignment.topCenter,
                        child: Padding(
                          padding: LayOutHelper.masterDataCards(context) == 3
                              ? const EdgeInsets.all(40)
                              : const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                                LayOutHelper.masterDataCards(context) == 3
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                title,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 30.0,
                                  color: titleColor,
                                  
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Wrap(
                                runSpacing: 12,
                                spacing: 12,
                                children: List.generate(
                                  tags.length,
                                  (index) => Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: tagBackGround),
                                    child: Text(
                                      tags[index],
                                      style: GoogleFonts.nunito(
                                        fontSize: 15.0,
                                        color: tagColor,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ));
        });
  }
}
