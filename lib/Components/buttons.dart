import 'package:flutter/material.dart';

import '../Constants/constants.dart';

bigButton(
    {width,
    height,
    borderColor,
    onTap,
    borderWidth,
    borderRadius,
    text,
    shadowColors,
    textColor,
    fontSize,
    fontWeight}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth == null ? 1 : borderWidth.toDouble()),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        color: darkGreenColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: shadowColors ?? Colors.black.withOpacity(0.2),
            blurRadius: 4,
          )
        ],
      ),
      child: Center(
        child: Text(
          text.toString(),
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontSize: fontSize == null ? 13.0 : fontSize.toDouble(),
            fontWeight: fontWeight ?? FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
