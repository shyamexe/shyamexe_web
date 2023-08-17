import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameBannerText extends StatelessWidget {
  const NameBannerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Hi I\'m Shyam Jith',
          style: GoogleFonts.urbanist(
            fontSize: 33.0,
            color: const Color(0xfff8edff),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text(
              'I create ',
              style: GoogleFonts.urbanist(
                fontSize: 33.0,
                color: const Color(0xfff8edff),
              ),
            ),
            // const SizedBox(
            //   width: 20.0,
            // ),
            DefaultTextStyle(
              textAlign: TextAlign.start,
              style:  GoogleFonts.urbanist(
                fontSize: 33.0,
                color: const Color(0xfff8edff),
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText('applications.'),
                  TyperAnimatedText('experiences.'),
                  TyperAnimatedText('for users.'),
                ],
                onTap: () {
                  if (kDebugMode) {
                    print("Tap Event");
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
