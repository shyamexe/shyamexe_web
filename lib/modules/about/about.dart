import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shyamexe/utils/layout_helper.dart';
import 'package:shyamexe/widgets/hover_button.dart';

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
      body: Stack(
        children: [
          Lottie.asset(
              'assets/lottie/bgg.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          SingleChildScrollView(
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
                      Navigator.pop(context);
                    },
                  ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: HoverTextButton(
                useMaxWidth: true,
                  title: 'Back to main',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
            ),
          ),
        ],
      ),
    );
  }
}
