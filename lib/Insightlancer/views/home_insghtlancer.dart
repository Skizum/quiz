import 'package:flutter/material.dart';

import 'subViews/home_page.dart';
import 'subViews/payement.dart';
import 'subViews/profile.dart';
import 'subViews/task_page.dart';

class HomeInsghtlancer extends StatefulWidget {
  const HomeInsghtlancer({super.key});

  @override
  State<HomeInsghtlancer> createState() => _HomeInsghtlancerState();
}

class _HomeInsghtlancerState extends State<HomeInsghtlancer> {
  int currentTab = 0;
  List<Widget> views = const [
    HomePage(),
    TaskPage(),
    PayementPage(),
    ProfilePage(),
  ];

  Widget currentScreen = const HomePage();
  final PageStorageBucket bucket = PageStorageBucket();

  // void onItemtapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 100,
        
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreen =const  HomePage();
                      currentTab = 0;
                    });
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Color.fromARGB(255, 3, 34, 80),
                    size: 20,
                  ),
                ),
                const Text(
                  "home",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 34, 80),
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    fontFamily: "light",
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){
                     setState(() {
                      currentScreen = const TaskPage();
                      currentTab = 1;
                    });
                  },
                  icon: const Icon(
                    Icons.view_timeline_outlined,
                    color: Color.fromARGB(255, 3, 34, 80),
                    size: 20,
                  ),
                ),
                const Text(
                  "My task",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 34, 80),
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    fontFamily: "light",
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){
                     setState(() {
                      currentScreen = const PayementPage();
                      currentTab = 2;
                    });
                  },
                  icon: const Icon(
                    Icons.monetization_on_outlined,
                    color: Color.fromARGB(255, 3, 34, 80),
                    size: 20,
                  ),
                ),
               const  Text(
                  "Payement",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 34, 80),
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    fontFamily: "light",
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){
                     setState(() {
                      currentScreen = const ProfilePage();
                      currentTab = 3;
                    });
                  },
                  icon: const Icon(
                    Icons.person_outline,
                    color: Color.fromARGB(255, 3, 34, 80),
                    size: 20,
                  ),
                ),
               const  Text(
                  "Profile",
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 34, 80),
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    fontFamily: "light",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        isExtended: true,
        backgroundColor: const Color.fromARGB(255, 3, 34, 80),
        onPressed: () {},
        shape: const CircleBorder(),
        child:const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
