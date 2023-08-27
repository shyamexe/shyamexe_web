// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverTextButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;
  final List<Color>? selectedBgColor;
  final List<Color>? unSelectedBgColor;
  final bool? useMaxWidth;
  HoverTextButton({
    Key? key,
    required this.title,
    this.onTap,
    this.selectedTextColor,
    this.unSelectedTextColor,
    this.selectedBgColor,
    this.unSelectedBgColor,
    this.useMaxWidth,
  }) : super(key: key);

  final ValueNotifier<bool> hoverNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    if (useMaxWidth == true) {
      return ChildWidget(
          hoverNotifier: hoverNotifier,
          onTap: onTap,
          selectedBgColor: selectedBgColor,
          unSelectedBgColor: unSelectedBgColor,
          title: title,
          selectedTextColor: selectedTextColor,
          unSelectedTextColor: unSelectedTextColor);
    } else {
      return Center(
          child: ChildWidget(
              hoverNotifier: hoverNotifier,
              onTap: onTap,
              selectedBgColor: selectedBgColor,
              unSelectedBgColor: unSelectedBgColor,
              title: title,
              selectedTextColor: selectedTextColor,
              unSelectedTextColor: unSelectedTextColor));
    }
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({
    super.key,
    required this.hoverNotifier,
    required this.onTap,
    required this.selectedBgColor,
    required this.unSelectedBgColor,
    required this.title,
    required this.selectedTextColor,
    required this.unSelectedTextColor,
  });

  final ValueNotifier<bool> hoverNotifier;
  final void Function()? onTap;
  final List<Color>? selectedBgColor;
  final List<Color>? unSelectedBgColor;
  final String title;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: hoverNotifier,
        builder: (_, hover, __) {
          return MouseRegion(
            onEnter: (event) {
              hoverNotifier.value = true;
            },
            onExit: (event) {
              hoverNotifier.value = false;
            },
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: hover
                            ? selectedBgColor ??
                                [
                                  const Color(0xfff8edff),
                                  const Color(0xfff8edff)
                                ]
                            : unSelectedBgColor ??
                                [
                                  const Color(0xfff8edff).withOpacity(.1),
                                  const Color(0xfff8edff).withOpacity(.1),
                                ])),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                      fontSize: 18.0,
                      color: hover
                          ? selectedTextColor ?? Colors.black
                          : unSelectedTextColor ?? const Color(0xfff8edff),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
