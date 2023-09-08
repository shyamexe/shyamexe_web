// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

import 'package:shyamexe/utils/layout_helper.dart';

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
  final void Function()? onTap;
  final bool? isLapTop;
  final String discription;

  WorkTileWidget({
    Key? key,
    required this.discription,
    required this.title,
    required this.tags,
    required this.gradientColors,
    required this.titleColor,
    required this.tagColor,
    required this.tagBackGround,
    required this.assetImage,
    required this.device,
    required this.orientation,
    required this.onTap,
    this.isLapTop,
  }) : super(key: key);

  final ValueNotifier<Matrix4> transformNotifier =
      ValueNotifier(Matrix4.identity());

  @override
  Widget build(BuildContext context) {
    if (LayOutHelper.masterDataCards(context) == 1) {
      return 
      // VisibilityDetector(
      //   key: Key(title),
      //   onVisibilityChanged: (visibilityInfo) {
      //     debugPrint(
      //         'Widget ${visibilityInfo.key} is ${visibilityInfo.visibleFraction} visible');
      //     if (visibilityInfo.visibleFraction == 1) {
      //       transformNotifier.value = Matrix4.identity()
      //         ..translate(0, -40, 0);
      //     } else {
      //       transformNotifier.value = Matrix4.identity();
      //     }
      //   },
      //   child:
         ChildWidget(
          isLapTop: isLapTop ?? false,
          transformNotifier: transformNotifier,
          gradientColors: gradientColors,
          device: device,
          assetImage: assetImage,
          title: title,
          titleColor: titleColor,
          tags: tags,
          tagBackGround: tagBackGround,
          tagColor: tagColor,
          onTap: onTap,
        // ),
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
          isLapTop: isLapTop ?? false,
          transformNotifier: transformNotifier,
          gradientColors: gradientColors,
          device: device,
          assetImage: assetImage,
          title: title,
          titleColor: titleColor,
          tags: tags,
          tagBackGround: tagBackGround,
          tagColor: tagColor,
          onTap: onTap,
        ),
      );
    }
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({
    Key? key,
    this.isLapTop = false,
    required this.transformNotifier,
    required this.gradientColors,
    required this.device,
    required this.assetImage,
    required this.title,
    required this.titleColor,
    required this.tags,
    required this.tagBackGround,
    required this.tagColor,
    this.onTap,
  }) : super(key: key);
  final bool isLapTop;
  final ValueNotifier<Matrix4> transformNotifier;
  final List<Color> gradientColors;
  final DeviceInfo device;
  final String assetImage;
  final String title;
  final Color titleColor;
  final List<String> tags;
  final Color tagBackGround;
  final Color tagColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Matrix4>(
        valueListenable: transformNotifier,
        builder: (_, transform, __) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
                height: LayOutHelper.masterDataCards(context) == 3 ? 450 : 350,
                margin: EdgeInsets.symmetric(
                    horizontal:
                        LayOutHelper.masterDataCards(context) == 2 ? 100 : 50,
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
                          top: isLapTop
                              ? size.maxHeight / 4
                              : size.maxHeight / 2,
                          child: AnimatedContainer(
                            height: size.maxHeight,
                            width: size.maxWidth,
                            duration: const Duration(milliseconds: 300),
                            transform: transform,
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.2),
                                      blurRadius: 50,
                                      offset: const Offset(0, 24),
                                      spreadRadius: 30)
                                ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: gradientColors.last.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 30.0,
                                      color: titleColor,
                                    ),
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
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: tagBackGround),
                                      child: Text(
                                        tags[index],
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
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
                )),
          );
        });
  }
}
