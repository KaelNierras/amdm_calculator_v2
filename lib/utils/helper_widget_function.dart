import 'package:flutter/material.dart';

import '_enum.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Span getSpanFromString(String span) {
  for (Span s in Span.values) {
    if (s.toString() == 'Span.$span') {
      return s;
    }
  }
  throw Exception('Invalid span');
}

