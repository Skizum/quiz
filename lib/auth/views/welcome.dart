import 'package:flutter/material.dart';
import 'package:quiz/Insightlancer/constants/color.dart';
import 'package:quiz/auth/views/cliker.dart';
// import 'package:quiz/Insightlancer/constants/color.dart';
import '../widget/page_navigation_wiget.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              PageNavigation(
                imagePAth: 'assets/image/python.svg',
                subText: 'Test your knowdlege in python programing',
                firstText: 'python (beautiful is better than ugly)',
              ),
              PageNavigation(
                imagePAth: 'assets/image/python.svg',
                subText: 'Test your knowdlege in python programing',
                firstText: 'python (beautiful is better than ugly)',
              ),
              PageNavigation(
                imagePAth: 'assets/image/python.svg',
                subText: 'Test your knowdlege in python programing',
                firstText: 'python (beautiful is better than ugly)',
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.6,
            left: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CrickCreak(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                elevation: 8,
                fixedSize: const Size(150, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Colors.green,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: const Text(
                "press me ok ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'light',
                ),
              ),
            ),
          ),
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  print("hello le monde la programmation est cool");
                  print("flutter is cool ");
                },
                style: ElevatedButton.styleFrom(
                  animationDuration: const Duration(
                    milliseconds: 5,
                  ),
                  backgroundColor: primary,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(constraints.maxWidth /1.2, 50),
                  maximumSize: Size(constraints.maxWidth/1.1,50),
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                ),
                child: const Text(
                  "responsive button",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'light',
                  ),
                ),
              ),
            );
          },),
        ],
      ),
    );
  }
}
