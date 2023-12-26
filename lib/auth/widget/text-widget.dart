import 'package:flutter/material.dart';

import '../../Insightlancer/constants/color.dart';


  Widget text24(
    {
      required String text,
      required double size,
    }
  ) {
     return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: primary,
        fontSize: size,
        fontFamily: "light",
      ),
    );
  }

