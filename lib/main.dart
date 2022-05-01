import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  Color mainColor = const Color(0xFF2631C1);
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar"),
        elevation: 0,
        backgroundColor: mainColor,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: "Tab 1",
              icon: Icon(Icons.celebration),
            ),
            Tab(
              text: "Tab 2",
              icon: Icon(Icons.celebration),
            ),
            Tab(
              text: "Tab 3",
              icon: Icon(Icons.celebration),
            ),
            Tab(
              text: "Tab 4",
              icon: Icon(Icons.celebration),
            ),
          ],

        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:const [
          TabView1(),
          TabView2(),
          TabView3(),
          TabView4(),
        ],
      ),
    );
  }
}

class TabView1 extends StatelessWidget {
  const TabView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/eid1.json'),
    );
  }
}

class TabView2 extends StatelessWidget {
  const TabView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/eid2.json'),
    );
  }
}

class TabView3 extends StatelessWidget {
  const TabView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/eid3.json'),
    );
  }
}

class TabView4 extends StatelessWidget {
  const TabView4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/eid4.json'),
    );
  }
}
