import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'text-widget.dart';

class PageNavigation extends StatelessWidget {
  const PageNavigation({
    super.key, required this.imagePAth, required this.firstText, required this.subText,
  });
  final String imagePAth;
  final String firstText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imagePAth,
          fit: BoxFit.fitWidth,
          width: 345,
          height: 345,
        ),
         Padding(
          padding: const EdgeInsets.only(top: 15),
          child: text24(
            text: firstText,
            size: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          child: text24(
              text:
                 subText,
              size: 18),
        )
      ],
    );
  }
}
