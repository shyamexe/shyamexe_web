
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyamexe/config/constants/strings.dart';

class WebUpperWidget extends StatelessWidget {
  const WebUpperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 250,
          child: AspectRatio(
            aspectRatio: 0.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                    image: AssetImage('assets/user.jpg'), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Text(
            Strings.aboutP1,
            textAlign: TextAlign.start,
            style: GoogleFonts.caveat(
              fontSize: 20.0,
              color: const Color(0xfff8edff),
            ),
          ),
        ),
      ],
    );
  }
}