import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class TabBarScrollable extends StatefulWidget {
  final List<Widget> myTabs;
  const TabBarScrollable({Key? key, required this.myTabs}) : super(key: key);

  @override
  State<TabBarScrollable> createState() => _TabBarScrollableState();
}

class _TabBarScrollableState extends State<TabBarScrollable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 100),
      child: TabBar(
        isScrollable: true,
        indicator: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(3.0),
            topLeft: Radius.circular(3.0),
          ),
        ),
        labelColor: darkGreenColor,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: Colors.white,
        tabs: widget.myTabs,
      ),
    );
  }
}
