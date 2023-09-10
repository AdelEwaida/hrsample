import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';

class DashboardColorfulContainerWidget extends StatefulWidget {
  final Gradient gradient;
  final String countText;
  final String midText;
  final IconData icon;
  const DashboardColorfulContainerWidget(
      {Key? key,
      required this.gradient,
      required this.countText,
      required this.midText,
      required this.icon})
      : super(key: key);

  @override
  State<DashboardColorfulContainerWidget> createState() =>
      _DashboardColorfulContainerWidgetState();
}

class _DashboardColorfulContainerWidgetState
    extends State<DashboardColorfulContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: 110,
          decoration: BoxDecoration(
            gradient: widget.gradient,
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.countText,
                    style: twentyFour700TextStyle(color: Colors.white),
                  ),
                  Text(
                    widget.midText,
                    style: sixteen400TextStyle(color: Colors.white),
                  ),
                  Text(
                    "+2.7% Since last week",
                    style: ten400TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Icon(
                widget.icon,
                color: Colors.white,
              )
            ],
          ),
        ),
        Positioned(
          right: -20,
          top: -10,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: -10,
          bottom: -10,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
