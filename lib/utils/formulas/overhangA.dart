// ignore_for_file: file_names

import '../helper_widget_function.dart';

List<num> getOverhangALoad1(valueP, valueL, valueA) {
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueAnum = num.parse(valueA);
  num valueLnum = num.parse(valueL);

  num valueB = valueLnum - valueAnum;

  fEM2 = valuePnum * valueB;
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad2(valueP, valueL,) {
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM2 = valuePnum * valueLnum;
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad3(valueP, valueL,) {
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM2 = ((valuePnum * 2 * valueLnum) / 3) + ((valuePnum * valueLnum) / 3);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad4(valueP, valueL,) {
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM2 = 3 * valuePnum * valueLnum;
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}


List<num> getOVerhangALoad5(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad6_1(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = 3 * valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 8);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad6_2(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 8);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad7_1(valueW, valueL, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM2 = valueWnum * valueKnum * (valueLnum - (valueKnum / 2));
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOVerhangALoad7_2(valueW, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueKnum = num.parse(valueK);

  fEM2 = valueWnum * (valueKnum * valueKnum);
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad8(valueW, valueL, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM2 = (valueWnum * valueKnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad9(valueW, valueL, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM2 = valueWnum * (valueLnum - (2 * valueKnum)) * (((valueLnum - (2 * valueKnum)) / 2) + valueKnum);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad10_1(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad10_2(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 3);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad11(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = 5 * valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 24);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad12(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = 3 * valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad13_1(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad13_2(valueW, valueL) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad14_1(valueW, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueKnum = num.parse(valueK);

  fEM2 = valueWnum * (valueKnum * valueKnum);
  fEM2 = checkNumberIfPositive(fEM2 / 3);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad14_2(valueW, valueL, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM2 = ((valueWnum * valueKnum) / 2) * ((valueKnum / 3) + valueLnum - valueKnum);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad15_1(valueW, valueL,) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 24);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad15_2(valueW, valueL,) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM2 = 5 * valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 24);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad16_1(valueW, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueKnum = num.parse(valueK);

  fEM2 = valueWnum * (valueKnum * valueKnum);
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad16_2(valueW, valueL, valueK) {
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM2 = ((valueWnum * valueKnum) / 2) * (((2 * valueKnum) / 3) + valueLnum - valueKnum);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad17_1(valueW1, valueW2, valueL) {
  num fEM2 = 0;

  num valueW1num = num.parse(valueW1);
  num valueW2num = num.parse(valueW2);
  num valueLnum = num.parse(valueL);

  fEM2 = ((valueW1num * (valueLnum * valueLnum)) / 2) + ((valueW2num * (valueLnum * valueLnum)) / 6);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad17_2(valueW1, valueW2, valueL) {
  num fEM2 = 0;

  num valueW1num = num.parse(valueW1);
  num valueW2num = num.parse(valueW2);
  num valueLnum = num.parse(valueL);

  fEM2 = ((valueW1num * (valueLnum * valueLnum)) / 2) + ((valueW2num * (valueLnum * valueLnum)) / 3);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<num> getOverhangALoad18(valueM) {
  num fEM2 = 0;

  num valueMnum = num.parse(valueM);

  fEM2 = valueMnum;
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}
