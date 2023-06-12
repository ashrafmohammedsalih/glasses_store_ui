import 'package:flutter/material.dart';
import '../widgets/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tab;

  final List<Tab> myTabs = const <Tab>[
    Tab(
      text: "Sneakers",
    ),
    Tab(
      text: "Hoodies",
    ),
    Tab(
      text: "Tights",
    ),
    Tab(
      text: "Slides",
    ),
    Tab(
      text: "Mnisi",
    ),
  ];

  @override
  void initState() {
    tab = TabController(length: myTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 18, top: 35),
                child: Image(
                  color: Colors.black87,
                  image: AssetImage("assets/Search.png"),
                ))
          ],
          leading: const Padding(
              padding: EdgeInsets.only(right: 0, top: 35),
              child: Image(
                color: Colors.black87,
                image: AssetImage("assets/menu.png"),
              ))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              "SPORTSWEAR",
              style: TextStyle(
                  fontFamily: 'Jellee-Roman',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  fontSize: 22),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                tabs: myTabs,
                dividerColor: Colors.transparent,
                indicatorWeight: 2,
                indicatorColor: Colors.red[300],
                labelColor: Colors.black,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.normal),
                labelPadding: const EdgeInsets.only(left: 2, right: 2),
                indicatorSize: TabBarIndicatorSize.label,
                controller: tab,
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 30),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                product(context:context),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                product(context:context),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                product(context:context),
              ],
            ),
          ))
        ],
      ),
    );
  }

}

