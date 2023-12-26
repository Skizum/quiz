import 'package:flutter/material.dart';


class Contentwidget extends StatelessWidget {
  const Contentwidget({
    super.key,
    required this.dimension,
    required this.backgColor,
    required this.textcolor,
    required this.icon,
    required this.firstext,
    required this.subtext,
    required this.lastext,
    required this.progressColors,
  });

  final Size dimension;
  final Color backgColor;
  final Color textcolor;
  final IconData icon;
  final String firstext;
  final String subtext;
  final String lastext;
  final Color progressColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension.width * 0.43,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(12),
        color: backgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "May,20,2022",
                style: TextStyle(
                  color: textcolor,
                  fontFamily: "light",
                  fontSize: 13,
                ),
              ),
              Icon(
                Icons.upgrade_rounded,
                color: textcolor,
                size: 12,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                icon,
                color: textcolor,
                size: 35,
              ),
              Column(
                children: [
                  Text(
                    firstext,
                    style: TextStyle(
                      color:textcolor,
                      fontSize: 18,
                      fontFamily: "light",
                    ),
                  ),
                  Text(
                    subtext,
                    style: TextStyle(
                        color: textcolor, fontSize: 14, fontFamily: "light",),
                  )
                ],
              ),
            ],
          ),
          Text(
            "Progess",
            style: TextStyle(
              color: textcolor,
              fontSize: 13,
            ),
          ),
          Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              color: textcolor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: dimension.width * 0.35,
            ),
            child: Text(
              lastext,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: textcolor,
                fontSize: 12,
                fontFamily: "light",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
