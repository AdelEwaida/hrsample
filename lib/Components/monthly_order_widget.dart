import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Constants/constants.dart';

class MonthlyOrdersWidget extends StatefulWidget {
  final List<ChartData> data;
  final TooltipBehavior tooltip;
  const MonthlyOrdersWidget(
      {Key? key, required this.data, required this.tooltip})
      : super(key: key);

  @override
  State<MonthlyOrdersWidget> createState() => _MonthlyOrdersWidgetState();
}

class _MonthlyOrdersWidgetState extends State<MonthlyOrdersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: 320,
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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Monthly Orders",
                style: sixteen600TextStyle(),
              ),
              const Icon(
                Icons.keyboard_control_sharp,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SfCartesianChart(
              isTransposed: true,
              tooltipBehavior: widget.tooltip,
              primaryXAxis: CategoryAxis(
                borderColor: Colors.transparent,
                axisBorderType: AxisBorderType.withoutTopAndBottom,
                minorGridLines: const MinorGridLines(
                  color: Colors.transparent,
                ),
                majorTickLines: const MajorTickLines(width: 0),
                majorGridLines: const MajorGridLines(
                  color: Colors.transparent,
                ),
                axisLine: const AxisLine(width: 0),
              ),
              primaryYAxis: NumericAxis(
                // isVisible: false,
                minimum: 0,
                maximum: 40,

                interval: 10,
              ),
              // plotAreaBorderWidth: 0,
              series: <ChartSeries<ChartData, String>>[
                BarSeries<ChartData, String>(
                  width: 0.2,
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.lightGreen,
                      Colors.green,
                    ],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  dataSource: widget.data,
                  xValueMapper: (ChartData sales, _) => sales.x,
                  yValueMapper: (ChartData sales, _) => sales.y,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
