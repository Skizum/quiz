import 'package:flutter/material.dart';
// import 'package:quiz/Insightlancer/views/home_insghtlancer.dart';
import 'auth/views/welcome.dart';
// import 'package:quiz/auth/widget/container_des.dart';
// import 'package:quiz/auth/widget/home.dart';
// import 'package:quiz/auth/widget/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome()
    );
  }
}
