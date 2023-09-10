import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class JobInformationDetailWidget extends StatefulWidget {
  const JobInformationDetailWidget({Key? key}) : super(key: key);

  @override
  State<JobInformationDetailWidget> createState() =>
      _JobInformationDetailWidgetState();
}

class _JobInformationDetailWidgetState
    extends State<JobInformationDetailWidget> {
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
                  'London, Utah',
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
                  'North America',
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
                  'IT',
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
                  'VP of IT',
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
                  'Mohammed Betawi',
                  style: twelve400TextStyle(color: Colors.blue),
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
