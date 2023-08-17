// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HoverIconButton extends StatelessWidget {
  final Widget child;
  final List<Color> gradient;
  final void Function()? onTap;
  HoverIconButton({
    Key? key,
    required this.child,
    required this.gradient,
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
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: hover
                            ? gradient
                            : [Colors.transparent, Colors.transparent])),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 3,
                    ),
                    child: child),
              ),
            ),
          );
        });
  }
}
