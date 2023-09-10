import 'package:flutter/material.dart';

import '../Components/text_styles.dart';
import '../Constants/constants.dart';
import 'main_tab_bar_screen.dart';

class TopTabBarScreen extends StatefulWidget {
  const TopTabBarScreen({Key? key}) : super(key: key);

  @override
  State<TopTabBarScreen> createState() => _TopTabBarScreenState();
}

class _TopTabBarScreenState extends State<TopTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.grey[200],
            child: Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.account_tree_rounded,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "COMPANY LOGO HERE",
                  style: twenty600TextStyle(color: lightGreenColor),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 7,
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.grey[100]!,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(3.0),
                          topLeft: Radius.circular(3.0),
                        ),
                      ),
                      labelColor: darkGreenColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(text: 'Home'),
                        Tab(text: 'My Info'),
                        Tab(text: 'People'),
                        Tab(text: 'Hiring'),
                        Tab(text: 'Reports'),
                        Tab(text: 'Files'),
                        Tab(text: 'Payroll'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 0, top: 5),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.card_travel_outlined,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.settings,
                  color: darkGreenColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.account_tree_rounded,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 3,
            color: lightGreenColor,
          ),
          const Expanded(child: MainTabBarScreen()),
        ],
      ),
    );
  }
}
