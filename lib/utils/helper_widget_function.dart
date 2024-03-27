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

List<double> getLoad5(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;
  fEM1 = (double.parse(valueW) *
      ((double.parse(valueL) * (double.parse(valueL)))));
  fEM1 = checkNumberIfNegative(fEM1 / 12);
  fEM1 = roundToFourDecimals(fEM1);

  fEM2 = (double.parse(valueW) *
      ((double.parse(valueL) * (double.parse(valueL)))));
  fEM2 = checkNumberIfPositive(fEM2 / 12);
  fEM1 = roundToFourDecimals(fEM2);

  return [fEM1, fEM2];
}

List<double> getLoad1(valueP, valueL, valueA) {
  double fEM1 = 0;
  double fEM2 = 0;
  double valueB = double.parse(valueL) - double.parse(valueA);

  double valuePDouble = double.parse(valueP);
  double valueADouble = double.parse(valueA);
  double valueLDouble = double.parse(valueL);

  fEM1 = valuePDouble * valueADouble * (valueB * valueB);
  fEM1 = checkNumberIfNegative(fEM1 / (valueLDouble * valueLDouble));
  fEM2 = valuePDouble * (valueADouble * valueADouble) * valueB;
  fEM2 = checkNumberIfPositive(fEM2 / (valueLDouble * valueLDouble));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}


