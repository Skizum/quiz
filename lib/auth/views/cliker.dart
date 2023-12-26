import 'package:flutter/material.dart';

class CrickCreak extends StatefulWidget {
  const CrickCreak({super.key});

  @override
  State<CrickCreak> createState() => _CrickCreakState();
}

class _CrickCreakState extends State<CrickCreak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("crik reak"),
        centerTitle: true,
      ),
      body: ClipRRect(
           borderRadius: BorderRadius.circular(15),
           child: Image.network("https://picsum.photos/250?image=9",
           width: 100,
           height: 150,),
      ),
    );
  }
}