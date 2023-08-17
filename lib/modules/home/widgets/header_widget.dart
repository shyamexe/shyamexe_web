
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderWidet extends StatelessWidget {
  const HeaderWidet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: Row(
        children: [
          const Spacer(),
          GestureDetector(
              onTap: () async {
                await launchUrl(
                    Uri.parse(
                      'https://www.instagram.com/shyam.exe/',
                    ),
                    mode: LaunchMode.externalNonBrowserApplication);
              },
              child: const FaIcon(
                size: 40,
                FontAwesomeIcons.instagram,
                color: Color(0xfff8edff),
              )),
          const SizedBox(
            width: 50,
          ),
          GestureDetector(
              onTap: () async {
                await launchUrl(
                    Uri.parse('https://github.com/shyamexe'),
                    mode: LaunchMode.externalNonBrowserApplication);
              },
              child: const FaIcon(
                size: 40,
                FontAwesomeIcons.github,
                color: Color(0xfff8edff),
              )),
        ],
      ),
    );
  }
}
