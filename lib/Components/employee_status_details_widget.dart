import 'package:flutter/material.dart';
import 'package:hrsample/Components/text_styles.dart';

import '../Constants/constants.dart';

class EmployeeStatusDetailsWidget extends StatefulWidget {
  const EmployeeStatusDetailsWidget({Key? key}) : super(key: key);

  @override
  State<EmployeeStatusDetailsWidget> createState() =>
      _EmployeeStatusDetailsWidgetState();
}

class _EmployeeStatusDetailsWidgetState
    extends State<EmployeeStatusDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, // Align text vertically
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: darkGreenColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '05/12/1241',
                  style: twelve400TextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Full-Time',
                  style: twelve400TextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'NA',
                  style: twelve400TextStyle(),
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
