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

num gcd(num a, num b) {
  if (b == 0) {
    return a;
  } else {
    return roundToFourDecimals(gcd(b, a % b));
  }
}

num lcm(num a, num b) {
  return roundToFourDecimals((a * b) / gcd(a, b));
}

num getK(lcm, valueL) {
  return roundToFourDecimals(lcm / valueL);
}

num getDfAB2(k1, k2) {
  return roundToFourDecimals(k1 / (k1 + k2));
}

num getDfBC1(k1, k2) {
  return roundToFourDecimals(k2 / (k1 + k2));
}

num checkNumberIfNegative(num value) {
  if (value > 0) {
    return roundToFourDecimals(value * -1);
  } else {
    return roundToFourDecimals(value);
  }
}

num checkNumberIfPositive(num value) {
  if (value < 0) {
    return roundToFourDecimals(value * -1);
  } else {
    return roundToFourDecimals(value);
  }
}

num changeSign(num value) {
  return roundToFourDecimals(value * -1);
}

num roundToFourDecimals(num value) {
  return num.parse(value.toStringAsFixed(4));
}

