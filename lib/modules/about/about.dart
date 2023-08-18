import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyamexe/config/constants/strings.dart';
import 'package:shyamexe/modules/home/home.dart';
import 'package:shyamexe/utils/layout_helper.dart';
import 'package:shyamexe/widgets/hover_button.dart';
import 'package:shyamexe/widgets/hover_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/bottom_text_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/mobile_upper_widget.dart';
import 'widgets/web_upper_widget.dart';

class About extends StatelessWidget {
  const About({super.key});

  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            Center(
              child: SizedBox(
                width: 700,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (LayOutHelper.masterDataCards(context) != 1)
                        const WebUpperWidget()
                      else
                        const MobileUpperWidget(),
                      const BottomTextWidget(),
                    ],
                  ),
                ),
              ),
            ),
            if (LayOutHelper.masterDataCards(context) != 3)
              HoverTextButton(
                title: 'Back to main',
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Home.routeName);
                },
              ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
