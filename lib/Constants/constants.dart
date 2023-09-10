import 'package:flutter/material.dart';

///colors for the application
var lightGreenColor = const Color(0xff81AE13);
var darkGreenColor = const Color(0xff527A00);

///routes for the application
const mainTabBarScreenRoute = "/";

///tab names
final List<Tab> myTabs = [
  const Tab(text: 'Dashboard'),
  const Tab(text: 'Job'),
  const Tab(text: 'Time off'),
  const Tab(text: 'Documents'),
  const Tab(text: 'Benefits'),
  const Tab(text: 'Training'),
  const Tab(text: 'Assets'),
  const Tab(text: 'Notes'),
  const Tab(text: 'Emergency'),
  const Tab(text: 'More'),
];

///chart model
class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
