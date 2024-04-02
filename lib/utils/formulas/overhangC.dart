import '../helper_widget_function.dart';

List<double> getOverhangCLoad1(valueP, valueA) {
  double fEM1 = 0;

  double valuePDouble = double.parse(valueP);
  double valueADouble = double.parse(valueA);

  fEM1 = valuePDouble * valueADouble;
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad2(valueP, valueL,) {
  double fEM1 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM1 = valuePDouble * valueLDouble;
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad3(valueP, valueL,) {
  double fEM1 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM1 =  ((valuePDouble * 2 * valueLDouble) / 3) + ((valuePDouble * valueLDouble) / 3);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad4(valueP, valueL,) {
  double fEM1 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM1 = 3 * valuePDouble * valueLDouble;
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}


List<double> getOverhangCLoad5(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad6_1(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 8);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad6_2(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = 3 * valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 8);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad7_1(valueW, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueKDouble = double.parse(valueK);


  fEM1 =  valueWDouble * (valueKDouble * valueKDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 2);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad7_2(valueW, valueL, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 = valueWDouble * valueKDouble * (valueLDouble - (valueKDouble / 2));
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad8(valueW, valueL, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 = valueWDouble * valueLDouble * valueKDouble;
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad9(valueW, valueL, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 =  valueWDouble * (valueLDouble - (2 * valueKDouble)) * (((valueLDouble - (2 * valueKDouble)) / 2) + valueKDouble);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad10_1(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 =  valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 3);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad10_2(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad11(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 24);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad12(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);


  fEM1 = 3 * valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad13_1(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad13_2(valueW, valueL) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad14_1(valueW, valueL, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);


  fEM1 = ((valueWDouble * valueKDouble) / 2) * ((valueKDouble / 3) + valueLDouble - valueKDouble);
  fEM1 = checkNumberIfNegative(fEM1);


  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad14_2(valueW, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueKDouble = double.parse(valueK);

  fEM1 =  valueWDouble * (valueKDouble * valueKDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 3);


  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad15_1(valueW, valueL,) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
 
  fEM1 =  5 * valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 24);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad15_2(valueW, valueL,) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
 
  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 24);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad16_1(valueW, valueL, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 =  ((valueWDouble * valueKDouble) / 2) * (((2 * valueKDouble) / 3) + valueLDouble - valueKDouble);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad16_2(valueW, valueK) {
  double fEM1 = 0;

  double valueWDouble = double.parse(valueW);
  double valueKDouble = double.parse(valueK);

  fEM1 =  valueWDouble * (valueKDouble * valueKDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad17_1(valueW1, valueW2, valueL) {
  double fEM1 = 0;

  double valueW1Double = double.parse(valueW1);
  double valueW2Double = double.parse(valueW2);
  double valueLDouble = double.parse(valueL);

  fEM1 =  ((valueW1Double * (valueLDouble * valueLDouble)) / 2) + ((valueW2Double * (valueLDouble * valueLDouble)) / 3);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad17_2(valueW1, valueW2, valueL) {
  double fEM1 = 0;

  double valueW1Double = double.parse(valueW1);
  double valueW2Double = double.parse(valueW2);
  double valueLDouble = double.parse(valueL);

  fEM1 =  ((valueW1Double * (valueLDouble * valueLDouble)) / 2) + ((valueW2Double * (valueLDouble * valueLDouble)) / 6);
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}

List<double> getOverhangCLoad18(valueM) {
  double fEM1 = 0;

  double valueMDouble = double.parse(valueM);

  fEM1 = valueMDouble;
  fEM1 = checkNumberIfNegative(fEM1);

  return [roundToFourDecimals(fEM1)];
}
