// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverTextButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  HoverTextButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final ValueNotifier<bool> hoverNotifier = ValueNotifier(false);

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
                            ? [const Color(0xfff8edff), const Color(0xfff8edff)]
                            : [
                                const Color(0xfff8edff).withOpacity(.1),
                                const Color(0xfff8edff).withOpacity(.1),
                              ])),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    title,
                    style: GoogleFonts.urbanist(
                      fontSize: 18.0,
                      color: hover ? Colors.black : const Color(0xfff8edff),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
