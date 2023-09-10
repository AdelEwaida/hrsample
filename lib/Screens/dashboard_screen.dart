import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Components/dashboard_colorful_container_widget.dart';
import '../Components/monthly_order_widget.dart';
import '../Components/recent_orders_widget.dart';
import '../Components/sales_overview_widget.dart';
import '../Components/traffic_referral_widget.dart';
import '../Constants/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<ChartData> data;
  late List<ChartData> data2;
  late List<ChartData> data3;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      ChartData('Jan', 32),
      ChartData('Feb', 15),
      ChartData('Mar', 30),
      ChartData('Apr', 26.4),
      ChartData('May', 24),
      ChartData('Jun', 24),
    ];
    data2 = [
      ChartData('Mon', 12),
      ChartData('Tue', 7),
      ChartData('Wed', 10),
      ChartData('Th', 16.4),
      ChartData('Fri', 14),
      ChartData('Sat', 18),
      ChartData('Sun', 14),
    ];
    data3 = [
      ChartData('Mon', 2),
      ChartData('Tue', 7),
      ChartData('Wed', 0),
      ChartData('Th', 6.4),
      ChartData('Fri', 4),
      ChartData('Sat', 8),
      ChartData('Sun', 4),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 4; i++)
                    DashboardColorfulContainerWidget(
                      icon: i == 0
                          ? Icons.shopping_cart_outlined
                          : i == 1
                              ? Icons.person_2_outlined
                              : i == 2
                                  ? Icons.wallet
                                  : Icons.stacked_line_chart,
                      countText: i == 0
                          ? "124"
                          : i == 1
                              ? "214"
                              : i == 2
                                  ? "\$124k"
                                  : "24%",
                      midText: i == 0
                          ? "Total orders"
                          : i == 1
                              ? "Customers"
                              : i == 2
                                  ? "Total Revenue"
                                  : "Total Growth",
                      gradient: i == 0
                          ? const RadialGradient(
                              colors: [Color(0xFF5AF161), Color(0xFF46A8B0)],
                              center: Alignment.center,
                              focal: Alignment.center,
                              radius: 1.5, // Adjust the radius as needed
                            )
                          : i == 1
                              ? const RadialGradient(
                                  colors: [
                                    Color(0xFFEF426B),
                                    Color(0xFFEE5648)
                                  ],
                                  center: Alignment.center,
                                  focal: Alignment.center,
                                  radius: 1.5, // Adjust the radius as needed
                                )
                              : i == 2
                                  ? const LinearGradient(
                                      colors: [
                                        Color(0xFF11222A),
                                        Color(0xFF264854)
                                      ],
                                    )
                                  : const LinearGradient(
                                      colors: [
                                        Color(0xFF8B2BE2),
                                        Color(0xFF6926E5)
                                      ],
                                    ),
                    ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SalesOverViewWidget(
                      tooltip: _tooltip, data: data2, data2: data3),
                  MonthlyOrdersWidget(
                    tooltip: _tooltip,
                    data: data,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecentOrdersWidget(),
                  TrafficReferralWidget(),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
