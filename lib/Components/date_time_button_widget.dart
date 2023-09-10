import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';

class DateTimeButtonWidget extends StatefulWidget {
  const DateTimeButtonWidget({Key? key}) : super(key: key);

  @override
  State<DateTimeButtonWidget> createState() => _DateTimeButtonWidgetState();
}

class _DateTimeButtonWidgetState extends State<DateTimeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Center(
        child: Text(
          "05/07/2020",
          style: eighteen500TextStyle(),
        ),
      ),
    );
  }
}
