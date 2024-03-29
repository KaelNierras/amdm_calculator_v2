import '../helper_widget_function.dart';

List<double> getOverhangALoad1(valueP, valueL, valueA) {
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueADouble = double.parse(valueA);
  double valueLDouble = double.parse(valueL);

  double valueB = valueLDouble - valueADouble;

  fEM2 = valuePDouble * valueB;
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad2(valueP, valueL,) {
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM2 = valuePDouble * valueLDouble;
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad3(valueP, valueL,) {
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM2 = ((valuePDouble * 2 * valueLDouble) / 3) + ((valuePDouble * valueLDouble) / 3);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad4(valueP, valueL,) {
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM2 = 3 * valuePDouble * valueLDouble;
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}


List<double> getOVerhangALoad5(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad6_1(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = 3 * valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 8);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad6_2(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 8);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad7_1(valueW, valueL, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM2 = valueWDouble * valueKDouble * (valueLDouble - (valueKDouble / 2));
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOVerhangALoad7_2(valueW, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueKDouble = double.parse(valueK);

  fEM2 = valueWDouble * (valueKDouble * valueKDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad8(valueW, valueL, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM2 = (valueWDouble * valueKDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad9(valueW, valueL, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM2 = valueWDouble * (valueLDouble - (2 * valueKDouble)) * (((valueLDouble - (2 * valueKDouble)) / 2) + valueKDouble);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad10_1(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad10_2(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 3);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad11(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = 5 * valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 24);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad12(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = 3 * valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad13_1(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad13_2(valueW, valueL) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad14_1(valueW, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueKDouble = double.parse(valueK);

  fEM2 = valueWDouble * (valueKDouble * valueKDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 3);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad14_2(valueW, valueL, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM2 = ((valueWDouble * valueKDouble) / 2) * ((valueKDouble / 3) + valueLDouble - valueKDouble);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad15_1(valueW, valueL,) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 24);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad15_2(valueW, valueL,) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM2 = 5 * valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 24);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad16_1(valueW, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueKDouble = double.parse(valueK);

  fEM2 = valueWDouble * (valueKDouble * valueKDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad16_2(valueW, valueL, valueK) {
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM2 = ((valueWDouble * valueKDouble) / 2) * (((2 * valueKDouble) / 3) + valueLDouble - valueKDouble);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad17_1(valueW1, valueW2, valueL) {
  double fEM2 = 0;

  double valueW1Double = double.parse(valueW1);
  double valueW2Double = double.parse(valueW2);
  double valueLDouble = double.parse(valueL);

  fEM2 = ((valueW1Double * (valueLDouble * valueLDouble)) / 2) + ((valueW2Double * (valueLDouble * valueLDouble)) / 6);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad17_2(valueW1, valueW2, valueL) {
  double fEM2 = 0;

  double valueW1Double = double.parse(valueW1);
  double valueW2Double = double.parse(valueW2);
  double valueLDouble = double.parse(valueL);

  fEM2 = ((valueW1Double * (valueLDouble * valueLDouble)) / 2) + ((valueW2Double * (valueLDouble * valueLDouble)) / 3);
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}

List<double> getOverhangALoad18(valueM) {
  double fEM2 = 0;

  double valueMDouble = double.parse(valueM);

  fEM2 = valueMDouble;
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM2)];
}
