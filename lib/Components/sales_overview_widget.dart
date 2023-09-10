import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Constants/constants.dart';

class SalesOverViewWidget extends StatefulWidget {
  final List<ChartData> data;
  final List<ChartData> data2;
  final TooltipBehavior tooltip;
  const SalesOverViewWidget(
      {Key? key,
      required this.tooltip,
      required this.data,
      required this.data2})
      : super(key: key);

  @override
  State<SalesOverViewWidget> createState() => _SalesOverViewWidgetState();
}

class _SalesOverViewWidgetState extends State<SalesOverViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: MediaQuery.of(context).size.width * 0.6,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales Overview",
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
                enableAxisAnimation: true,
                plotAreaBorderColor: Colors.transparent,
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  minimum: 0,
                  maximum: 40,
                  interval: 10,
                ),
                tooltipBehavior: widget.tooltip,
                margin: EdgeInsets.zero,
                series: <ChartSeries<ChartData, String>>[
                  SplineAreaSeries<ChartData, String>(
                    color: Colors.transparent,
                    borderColor: Colors.blue,
                    borderDrawMode: BorderDrawMode.top,
                    borderWidth: 3,
                    dataSource: widget.data,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    animationDuration: 2000.0,
                    gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.blue.withOpacity(0.5),
                        Colors.blue.withOpacity(0.0),
                      ],
                    ),
                  ),
                  SplineAreaSeries<ChartData, String>(
                    color: Colors.transparent,
                    borderColor: Colors.orange,
                    borderDrawMode: BorderDrawMode.top,
                    borderWidth: 3,
                    dataSource: widget.data2,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    animationDuration: 2000.0,
                    gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.orange.withOpacity(0.5),
                        Colors.orange.withOpacity(0.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
