

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyamexe/config/constants/strings.dart';

class MobileUpperWidget extends StatelessWidget {
  const MobileUpperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.aboutP1,
          textAlign: TextAlign.center,
          style: GoogleFonts.caveat(
            fontSize: 20.0,
            color: const Color(0xfff8edff),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 300,
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
      ],
    );
  }
}