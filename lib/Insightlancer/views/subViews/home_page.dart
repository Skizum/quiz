import 'package:flutter/material.dart';
import 'package:quiz/Insightlancer/constants/color.dart';
import 'package:quiz/Insightlancer/widget/content_widegt.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.table_chart_outlined,
          color: primary,
          size: 25,
        ),
        title: const Text(
          "Home",
          style: TextStyle(
            color: Color.fromARGB(255, 3, 34, 80),
            fontSize: 18,
            fontFamily: "light",
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications,
            color: Color.fromARGB(255, 3, 34, 80),
            size: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hi Jenifer !",
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 34, 80),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Good mornig",
                style: TextStyle(
                  color: Color.fromARGB(255, 211, 196, 196),
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 50,
                  decoration: const BoxDecoration(
                      color:  Color.fromARGB(62, 165, 163, 163),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 3, 34, 80),
                        size: 20,
                      ),
                      hintText: "Search ..",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 3, 34, 80),
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: const BorderSide()),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 3, 34, 80),
                        width: 2,
                      )),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 34, 80),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Let'schede you Project",
                            style: TextStyle(
                                color: Color.fromARGB(255, 211, 196, 196),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/image/homeSvg.svg",
                        width: 120,
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ongoing Projects",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 34, 80),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Views all",
                    style: TextStyle(
                        color: Color.fromARGB(255, 211, 196, 196),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Contentwidget(
                          dimension: dimension,
                          backgColor: primary,
                          icon: Icons.mobile_friendly,
                          textcolor: textcolor,
                          firstext: "Mobile App",
                          subtext: "E-cormmerce",
                          lastext: "80%",
                          progressColors: primary,
                        ),
                        const SizedBox(height: 15,),
                        Contentwidget(
                          dimension: dimension,
                          backgColor: textsubColor,
                          icon: Icons.spatial_audio_off_sharp,
                          textcolor: primary,
                          firstext: "Banner",
                          subtext: "marketing",
                          lastext: "80%",
                          progressColors: primary,
                        ),
                      ],
                    ),
                   const  SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Contentwidget(
                          dimension: dimension,
                          backgColor: textsubColor,
                          icon: Icons.space_dashboard_outlined,
                          textcolor: primary,
                          firstext: "Dashbord",
                          subtext: "profile",
                          lastext: "80%",
                          progressColors: primary,
                        ),
                        const SizedBox(height: 15,),
                        Contentwidget(
                          dimension: dimension,
                          backgColor: textsubColor,
                          icon: Icons.spatial_audio_off_sharp,
                          textcolor: primary,
                          firstext: "UI/UX",
                          subtext: "test manager",
                          lastext: "80%",
                          progressColors: primary,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
