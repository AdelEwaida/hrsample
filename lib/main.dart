import 'package:flutter/material.dart';

import 'Constants/constants.dart';
import 'Screens/top_tab_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: mainTabBarScreenRoute,
      routes: {
        mainTabBarScreenRoute: (context) => const TopTabBarScreen(),
      },
    );
  }
}
