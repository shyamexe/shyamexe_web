import 'package:flutter/material.dart';
import 'package:shyamexe/utils/layout_helper.dart';

import '../../../widgets/hover_button.dart';
import 'name_banner_text.dart';
import 'user_avatar.dart';

class NameBanner extends StatelessWidget {
  const NameBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LayOutHelper.masterDataCards(context) != 1
        ? Center(
            child: SizedBox(
              width: 500,
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    UserAvatar(),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: NameBannerText(),
                    )
                  ]),
            ),
          )
        : Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UserAvatar(),
                  const SizedBox(
                    height: 30,
                  ),
                  const NameBannerText(),
                  const SizedBox(
                    height: 30,
                  ),
                  HoverTextButton(
                    title: 'About',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          );
  }
}
