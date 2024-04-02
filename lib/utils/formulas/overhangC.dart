import '../helper_widget_function.dart';

List<num> getOverhangCLoad1(valueP, valueA) {
  num fEM1 = 0;

  num valuePnum = num.parse(valueP);
  num valueAnum = num.parse(valueA);

  fEM1 = valuePnum * valueAnum;
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad2(valueP, valueL,) {
  num fEM1 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM1 = valuePnum * valueLnum;
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad3(valueP, valueL,) {
  num fEM1 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM1 =  ((valuePnum * 2 * valueLnum) / 3) + ((valuePnum * valueLnum) / 3);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad4(valueP, valueL,) {
  num fEM1 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM1 = 3 * valuePnum * valueLnum;
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}


List<num> getOverhangCLoad5(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad6_1(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 8);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad6_2(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = 3 * valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 8);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad7_1(valueW, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueKnum = num.parse(valueK);


  fEM1 =  valueWnum * (valueKnum * valueKnum);
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad7_2(valueW, valueL, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 = valueWnum * valueKnum * (valueLnum - (valueKnum / 2));
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad8(valueW, valueL, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 = valueWnum * valueLnum * valueKnum;
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad9(valueW, valueL, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 =  valueWnum * (valueLnum - (2 * valueKnum)) * (((valueLnum - (2 * valueKnum)) / 2) + valueKnum);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad10_1(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 =  valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 3);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad10_2(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad11(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 24);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad12(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);


  fEM1 = 3 * valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad13_1(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);


  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad13_2(valueW, valueL) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);


  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad14_1(valueW, valueL, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);


  fEM1 = ((valueWnum * valueKnum) / 2) * ((valueKnum / 3) + valueLnum - valueKnum);
  fEM1 = checkNumberIfNegative(fEM1);


  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad14_2(valueW, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueKnum = num.parse(valueK);

  fEM1 =  valueWnum * (valueKnum * valueKnum);
  fEM1 = checkNumberIfNegative(fEM1 / 3);


  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad15_1(valueW, valueL,) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
 
  fEM1 =  5 * valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 24);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad15_2(valueW, valueL,) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
 
  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 24);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad16_1(valueW, valueL, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 =  ((valueWnum * valueKnum) / 2) * (((2 * valueKnum) / 3) + valueLnum - valueKnum);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad16_2(valueW, valueK) {
  num fEM1 = 0;

  num valueWnum = num.parse(valueW);
  num valueKnum = num.parse(valueK);

  fEM1 =  valueWnum * (valueKnum * valueKnum);
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad17_1(valueW1, valueW2, valueL) {
  num fEM1 = 0;

  num valueW1num = num.parse(valueW1);
  num valueW2num = num.parse(valueW2);
  num valueLnum = num.parse(valueL);

  fEM1 =  ((valueW1num * (valueLnum * valueLnum)) / 2) + ((valueW2num * (valueLnum * valueLnum)) / 3);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad17_2(valueW1, valueW2, valueL) {
  num fEM1 = 0;

  num valueW1num = num.parse(valueW1);
  num valueW2num = num.parse(valueW2);
  num valueLnum = num.parse(valueL);

  fEM1 =  ((valueW1num * (valueLnum * valueLnum)) / 2) + ((valueW2num * (valueLnum * valueLnum)) / 6);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<num> getOverhangCLoad18(valueM) {
  num fEM1 = 0;

  num valueMnum = num.parse(valueM);

  fEM1 = valueMnum;
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}
