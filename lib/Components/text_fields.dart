import 'package:flutter/material.dart';

import '../Constants/constants.dart';

textField({controller, hintText, onChanged}) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: darkGreenColor,
      ),
    ),
    child: Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            onChanged: onChanged,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
