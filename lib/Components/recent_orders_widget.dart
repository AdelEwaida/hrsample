import 'package:hrsample/Components/recent_orders_progress_widget.dart';
import 'package:hrsample/Components/text_styles.dart';

import 'package:flutter/material.dart';

class RecentOrdersWidget extends StatefulWidget {
  const RecentOrdersWidget({Key? key}) : super(key: key);

  @override
  State<RecentOrdersWidget> createState() => _RecentOrdersWidgetState();
}

class _RecentOrdersWidgetState extends State<RecentOrdersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3),
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: MediaQuery.of(context).size.width * 0.42,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Orders",
                style: sixteen600TextStyle(),
              ),
              const Icon(
                Icons.keyboard_control_sharp,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              runSpacing: 10.0,
              spacing: 10.0,
              children: [
                RecentOrdersProgressWidget(
                  gradientColors: [
                    Colors.green,
                    Colors.lime,
                  ],
                  bottomText: "New Visits",
                ),
                RecentOrdersProgressWidget(
                  gradientColors: [
                    Colors.red,
                    Colors.pink,
                  ],
                  bottomText: "Bounce Rate",
                ),
                RecentOrdersProgressWidget(
                  gradientColors: [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ],
                  bottomText: "Server Load",
                ),
                RecentOrdersProgressWidget(
                  gradientColors: [
                    Colors.green,
                    Colors.lime,
                  ],
                  bottomText: "Used RAM",
                ),
                RecentOrdersProgressWidget(
                  gradientColors: [
                    Colors.red,
                    Colors.pink,
                  ],
                  bottomText: "Web Traffic",
                ),
                RecentOrdersProgressWidget(
                  gradientColors: [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ],
                  bottomText: "Page Views",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
