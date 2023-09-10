import 'package:flutter/material.dart';

class RequestAChangeButton extends StatefulWidget {
  const RequestAChangeButton({Key? key}) : super(key: key);

  @override
  State<RequestAChangeButton> createState() => _RequestAChangeButtonState();
}

class _RequestAChangeButtonState extends State<RequestAChangeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Request a Change',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(width: 4.0),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
