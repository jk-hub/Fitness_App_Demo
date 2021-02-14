import 'package:flutter/material.dart';

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;

TextStyle getRegularTextStyle(double size, {Color color, FontWeight weight}) {
  return TextStyle(
    color: color ?? Colors.black,
    fontWeight: weight ?? regular,
    fontFamily: "Poppins",
    fontSize: size,
  );
}
