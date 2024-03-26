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
      return gcd(b, a % b);
    }
  }

  double lcm(double a, double b) {
    return (a * b) / gcd(a, b);
  }

  double getK(lcm, valueL) {
    return lcm / valueL;
  }

  double getDfAB2(k1, k2) {
    return k1 / (k1 + k2);
  }

  double getDfBC1(k1, k2) {
    return k2 / (k1 + k2);
  }

  double checkNumberIfNegative(double value) {
    if (value > 0) {
      return value * -1;
    } else {
      return value;
    }
  }

  double checkNumberIfPositive(double value) {
    if (value < 0) {
      return value * -1;
    } else {
      return value;
    }
  }

  double changeSign(double value) {
    return value * -1;
  }

  List<double> getLoad5(valueW, valueL) {
    double fEM1 = 0;
    double fEM2 = 0;
    fEM1 = (double.parse(valueW) *
        ((double.parse(valueL) * (double.parse(valueL)))));
    fEM1 = checkNumberIfNegative(fEM1 / 12);

    fEM2 = (double.parse(valueW) *
        ((double.parse(valueL) * (double.parse(valueL)))));
    fEM2 = checkNumberIfPositive(fEM2 / 12);
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

    return [fEM1, fEM2];
  }

