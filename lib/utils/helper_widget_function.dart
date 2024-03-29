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

double gcd(double a, double b) {
  if (b == 0) {
    return a;
  } else {
    return roundToFourDecimals(gcd(b, a % b));
  }
}

double lcm(double a, double b) {
  return roundToFourDecimals((a * b) / gcd(a, b));
}

double getK(lcm, valueL) {
  return roundToFourDecimals(lcm / valueL);
}

double getDfAB2(k1, k2) {
  return roundToFourDecimals(k1 / (k1 + k2));
}

double getDfBC1(k1, k2) {
  return roundToFourDecimals(k2 / (k1 + k2));
}

double checkNumberIfNegative(double value) {
  if (value > 0) {
    return roundToFourDecimals(value * -1);
  } else {
    return roundToFourDecimals(value);
  }
}

double checkNumberIfPositive(double value) {
  if (value < 0) {
    return roundToFourDecimals(value * -1);
  } else {
    return roundToFourDecimals(value);
  }
}

double changeSign(double value) {
  return roundToFourDecimals(value * -1);
}

double roundToFourDecimals(double value) {
  return double.parse(value.toStringAsFixed(4));
}

