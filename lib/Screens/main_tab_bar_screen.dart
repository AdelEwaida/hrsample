import 'package:hrsample/Components/text_styles.dart';

import 'package:flutter/material.dart';

import '../Components/profile_picture_avatar.dart';
import '../Components/request_a_change_button.dart';
import '../Components/settings_icon_button.dart';
import '../Components/tab_bar_scrollable.dart';
import '../Constants/constants.dart';
import 'dashboard_screen.dart';
import 'job_screen.dart';

class MainTabBarScreen extends StatefulWidget {
  const MainTabBarScreen({Key? key}) : super(key: key);

  @override
  State<MainTabBarScreen> createState() => _MainTabBarScreenState();
}

class _MainTabBarScreenState extends State<MainTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            lightGreenColor,
                            darkGreenColor,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 350),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LHSTATE",
                                      style: twentyFour700TextStyle(
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "VP of IT",
                                      style: eighteen500TextStyle(
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RequestAChangeButton(),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    SettingsIconButton(),
                                    SizedBox(
                                      width: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TabBarScrollable(
                              myTabs: myTabs,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      const DashboardScreen(),
                      const JobScreen(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              top: 20,
              left: 100,
              child: ProfilePictureAvatar(image: "assets/image7.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
