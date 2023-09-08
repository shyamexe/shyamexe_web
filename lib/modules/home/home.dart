import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shyamexe/utils/layout_helper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import '../../utils/custom_scroll_behavior.dart';
import '../../widgets/hover_button.dart';
import 'widgets/header_widget.dart';
import 'widgets/name_banner.dart';
import 'widgets/works_widgets.dart';

class Home extends StatefulWidget {
  static const routeName = '/';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    animation = AnimationController(vsync: this);
    super.initState();
  }

  double percentage({required double number, required double total}) {
    return (number / total);
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        animation.value = percentage(
            number: notification.metrics.pixels,
            total: notification.metrics.maxScrollExtent);
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Lottie.asset(
              'assets/lottie/bgg.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: RefreshIndicator(
                color: const Color(0xfff9eeff),
                onRefresh: () async {
                  html.window.location.reload();
                },
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
                      const Center(
                        child: SizedBox(
                          width: 1000,
                          child: WorksWidgets(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 30),
                        child: Row(
                          children: [
                            const Spacer(),
                            Text(
                              'Say Hi!',
                              style: GoogleFonts.nunito(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            HoverTextButton(
                              title: 'Reach out',
                              onTap: () async {
                                await launchUrl(
                                    Uri.parse(
                                      'mailto:shyamjith38@hotmail.com',
                                    ),
                                    mode: LaunchMode
                                        .externalNonBrowserApplication);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: LayOutHelper.masterDataCards(context) == 1
                  ? Alignment.topLeft
                  : Alignment.topCenter,
              child: Lottie.asset(
                'assets/lottie/progress.json',
                controller: animation,
                height: LayOutHelper.masterDataCards(context) == 1 ? 60 : 100,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
