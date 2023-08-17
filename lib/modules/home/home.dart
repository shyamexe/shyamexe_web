import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/custom_scroll_behavior.dart';
import '../../widgets/hover_button.dart';
import 'widgets/header_widget.dart';
import 'widgets/name_banner.dart';
import 'widgets/works_widgets.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              // parent: AlwaysScrollableScrollPhysics(),
              ),
          child: Column(
            children: [
              const HeaderWidet(),
              const SizedBox(
                height: 30,
              ),
              const NameBanner(),
              const SizedBox(
                height: 30,
              ),
              const WorksWidgets(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                child: Row(
                  children: [
                    const Spacer(),
                    HoverTextButton(
                      title: 'Reach out',
                      onTap: () async {
                        await launchUrl(
                            Uri.parse(
                              'mailto:shyamjith38@hotmail.com',
                            ),
                            mode: LaunchMode.externalNonBrowserApplication);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
