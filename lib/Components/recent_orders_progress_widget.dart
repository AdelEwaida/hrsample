import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentOrdersProgressWidget extends StatefulWidget {
  final List<Color> gradientColors;
  final String bottomText;
  const RecentOrdersProgressWidget(
      {Key? key, required this.gradientColors, required this.bottomText})
      : super(key: key);

  @override
  State<RecentOrdersProgressWidget> createState() =>
      _RecentOrdersProgressWidgetState();
}

class _RecentOrdersProgressWidgetState
    extends State<RecentOrdersProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 170,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.6),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.round,
            radius: 50.0,
            lineWidth: 8.0,
            backgroundWidth: 3.0,
            linearGradient: LinearGradient(colors: widget.gradientColors),
            percent: 0.8,
            center: Text(
              "80%",
              style: sixteen600TextStyle(),
            ),
          ),
          Text(
            widget.bottomText,
            style: fourteen500TextStyle(),
          )
        ],
      ),
    );
  }
}
