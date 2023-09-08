import 'package:flutter/material.dart';
import 'package:shyamexe/config/constants/strings.dart';
import 'package:shyamexe/modules/common/url.dart';
import 'package:shyamexe/widgets/hover_button.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class BottomTextWidget extends StatelessWidget {
  const BottomTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          Strings.aboutP2title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 30.0,
            color: Color(0xfff8edff),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          Strings.aboutP2,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20.0,
            color: Color(0xfff8edff),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          Strings.aboutP3title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 30.0,
            color: Color(0xfff8edff),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          Strings.aboutP3,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20.0,
            color: Color(0xfff8edff),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          Strings.aboutP4,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20.0,
            color: Color(0xfff8edff),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: HoverTextButton(
                unSelectedTextColor: Colors.black,
                selectedTextColor: Colors.white,
                selectedBgColor: const [
                  Color(0xffc2e59c),
                  Color(0xff64b3f4),
                ],
                unSelectedBgColor: const [
                  Color(0xfff8edff),
                  Color(0xfff8edff),
                ],
                useMaxWidth: true,
                title: 'Reach out',
                onTap: () async {
                  await launchUrl(
                      Uri.parse(
                        'mailto:shyamjith38@hotmail.com',
                      ),
                      mode: LaunchMode.externalNonBrowserApplication);
                },
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: HoverTextButton(
                useMaxWidth: true,
                title: 'Download CV',
                onTap: () {
                  html.window.open(Url.cv, 'cv');
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 2,
          color: const Color(0xfff8edff).withOpacity(.2),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
