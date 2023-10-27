import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:shyamexe/utils/code_bloc_helper.dart';
import 'package:shyamexe/utils/layout_helper.dart';
import 'package:shyamexe/widgets/hover_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../home/widgets/header_widget.dart';
import 'model/work_details_model.dart';

class WorkDetails extends StatelessWidget {
  static const String routeName='/workDetails';
  final WorkDetailsModel data;
  const WorkDetails({
    Key? key,
   required this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidet(),
            Center(
              child: SizedBox(
                width: 700,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    children: [
                      Text(
                        data.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 33.0,
                          color: Color(0xfff8edff),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data.discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 12.0,
                          color: Color(0xfff8edff),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width:
                  LayOutHelper.orderCards(context) == 2 ? 600 : double.infinity,
              margin: EdgeInsets.symmetric(
                  horizontal: LayOutHelper.orderCards(context) == 2 ? 60 : 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xfff8edff).withOpacity(.1),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color(0xfff8edff).withOpacity(.4),
                        borderRadius: BorderRadius.circular(11)),
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        data.iconPath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@${data.linkTitle}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14.0,
                          color: Color(0xfff8edff),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        data.linkSubTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 10.0,
                          color: const Color(0xfff8edff).withOpacity(.4),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  HoverTextButton(
                    title: 'Visit site',
                    onTap: () async {
                      await launchUrl(
                          Uri.parse(
                            data.webLink,
                          ),
                          mode: LaunchMode.externalNonBrowserApplication);
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: const Color(0xfff8edff).withOpacity(.4),
            ),
            Center(
              child: SizedBox(
                width: 700,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Column(
                    children: [
                      MarkdownBody(
                        selectable: true,
                        builders: {
                          'code': CodeElementBuilder(),
                        },
                        styleSheet: MarkdownStyleSheet(
                            codeblockDecoration:
                                const BoxDecoration(color: Colors.transparent)),
                        onTapLink: (text, href, title) async {
                          await launchUrl(
                              Uri.parse(
                                href ?? '',
                              ),
                              mode: LaunchMode.externalNonBrowserApplication);
                        },
                        data: data.markdownDisc,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            HoverTextButton(
              title: 'Back to main',
              onTap: () {
                GoRouter.of(context).pop();
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
