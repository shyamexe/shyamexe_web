import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyamexe/utils/layout_helper.dart';
import 'package:shyamexe/widgets/hover_button.dart';
import 'package:shyamexe/widgets/hover_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        children: [
          if (LayOutHelper.masterDataCards(context) != 1)
            HoverTextButton(
              title: 'Back to main',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          if (LayOutHelper.masterDataCards(context) != 1) const Spacer(),
          Text('exe',
              style: GoogleFonts.libreBarcode39(
                fontSize: 30.0,
                color: const Color(0xfff8edff),
              )),
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
