import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz/Insightlancer/constants/color.dart';
import 'package:quiz/Insightlancer/traitement.dart';

import 'football/football.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.question_answer_outlined,
          color: primary,
          size: 25,
        ),
        title: Text(
          "Theme Questions",
          style: TextStyle(
            color: primary,
            fontSize: 18,
            fontFamily: "light",
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FootballQuiz(),),);
            },
            child: Card(
              elevation: 8,
              color: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/image/football.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Football",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "light",
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyApp(),),);
            },
            child: Card(
              elevation: 8,
              color: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/image/python.svg",
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Python",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "light",
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("foods");
            },
            child: Card(
              elevation: 8,
              color: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/image/foods.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Foods",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "light",
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("java");
            },
            child: Card(
              elevation: 8,
              color: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/image/java.svg"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Java",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "light",
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("animal");
            },
            child: Card(
              elevation: 8,
              color: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/image/animal.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Animal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "light",
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("football");
            },
            child: Card(
              elevation: 8,
              color: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/image/anime.svg"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Anime",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "light",
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
