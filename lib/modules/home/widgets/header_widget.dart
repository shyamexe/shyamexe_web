import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shyamexe/modules/about/about.dart';
import 'package:shyamexe/widgets/hover_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/layout_helper.dart';
import '../../../widgets/hover_button.dart';

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
          if (LayOutHelper.masterDataCards(context) != 1)
            HoverTextButton(
              title: 'About',
              onTap: () {
                Navigator.of(context).pushNamed(About.routeName);
              },
            ),
          
          const Spacer(),
          HoverIconButton(
            gradient: const [
              Color(0xffffa442),
              Color(0xffff1fd2),
            ],
            child: const FaIcon(
              size: 40,
              FontAwesomeIcons.instagram,
              color: Color(0xfff8edff),
            ),
            onTap: () async {
              await launchUrl(
                  Uri.parse(
                    'https://www.instagram.com/shyam.exe/',
                  ),
                  mode: LaunchMode.externalNonBrowserApplication);
            },
          ),
          const SizedBox(
            width: 20,
          ),
          HoverIconButton(
            gradient: const [
              Color(0xff2d90e3),
              Color(0xff2d90e3),
            ],
            child: const FaIcon(
              size: 40,
              FontAwesomeIcons.github,
              color: Color(0xfff8edff),
            ),
            onTap: () async {
              await launchUrl(Uri.parse('https://github.com/shyamexe'),
                  mode: LaunchMode.externalNonBrowserApplication);
            },
          ),
        ],
      ),
    );
  }
}
