import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';

class EmployeeStatusHeadingWidget extends StatefulWidget {
  const EmployeeStatusHeadingWidget({Key? key}) : super(key: key);

  @override
  State<EmployeeStatusHeadingWidget> createState() =>
      _EmployeeStatusHeadingWidgetState();
}

class _EmployeeStatusHeadingWidgetState
    extends State<EmployeeStatusHeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, // Align text vertically
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Effective Date',
                  style: twelve600TextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Employment Status',
                  style: twelve600TextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Comment',
                  style: twelve600TextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
