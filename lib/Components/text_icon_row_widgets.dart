import 'package:hrsample/Components/text_styles.dart';
import 'package:flutter/material.dart';

class RowIcon400Widget extends StatefulWidget {
  final IconData icon;
  final String text;
  const RowIcon400Widget({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  State<RowIcon400Widget> createState() => _RowIcon400WidgetState();
}

class _RowIcon400WidgetState extends State<RowIcon400Widget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon,
          color: Colors.grey[600],
          size: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          widget.text,
          style: ten400TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}
