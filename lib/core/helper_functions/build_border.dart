import 'package:flutter/material.dart';

OutlineInputBorder buildBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(
      width: 1,
      color: color,
    ),
  );
}
