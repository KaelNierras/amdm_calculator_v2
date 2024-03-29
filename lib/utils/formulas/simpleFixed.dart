// ignore_for_file: file_names

import '../helper_widget_function.dart';

List<double> getLoad1(valueP, valueL, valueA) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueADouble = double.parse(valueA);
  double valueLDouble = double.parse(valueL);

  double valueB = double.parse(valueL) - double.parse(valueA);

  fEM1 = valuePDouble * valueADouble * (valueB * valueB);
  fEM1 = checkNumberIfNegative(fEM1 / (valueLDouble * valueLDouble));

  fEM2 = valuePDouble * (valueADouble * valueADouble) * valueB;
  fEM2 = checkNumberIfPositive(fEM2 / (valueLDouble * valueLDouble));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad2(valueP, valueL,) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM1 = valuePDouble * valueLDouble;
  fEM1 = checkNumberIfNegative(fEM1 / 8);

  fEM2 = valuePDouble * valueLDouble;
  fEM2 = checkNumberIfPositive(fEM2 / 8);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad3(valueP, valueL,) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM1 = valuePDouble * valueLDouble;
  fEM1 = checkNumberIfNegative(fEM1 * (2/9));

  fEM2 = valuePDouble * valueLDouble;
  fEM2 = checkNumberIfPositive(fEM2 * (2/9));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad4(valueP, valueL,) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valuePDouble = double.parse(valueP);
  double valueLDouble = double.parse(valueL);

  fEM1 = valuePDouble * valueLDouble;
  fEM1 = checkNumberIfNegative(fEM1 * (5/16));

  fEM2 = valuePDouble * valueLDouble;
  fEM2 = checkNumberIfPositive(fEM2 * (5/16));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}


List<double> getLoad5(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad6_1(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 * (11/192));

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 * (5/192));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad6_2(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 * (5/192));

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 * (11/192));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad7_1(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (6 - (8 * valueKDouble) + (3 * (valueKDouble * valueKDouble)));
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble * valueKDouble) * (4 - (3 * valueKDouble));
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad7_2(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble * valueKDouble) * (4 - (3 * valueKDouble));
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (6 - (8 * valueKDouble) + (3 * (valueKDouble * valueKDouble)));
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad8(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (3 - (2 * valueKDouble));
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (3 - (2 * valueKDouble));
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad9(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble) * (1 - (6 * (valueKDouble * valueKDouble)) + (4 * (valueKDouble * valueKDouble * valueKDouble)));
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (1 - (6 * (valueKDouble * valueKDouble)) + (4 * (valueKDouble * valueKDouble * valueKDouble)));
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad10_1(valueW, valueL) {
  print('Passed valueW: $valueW, valueL: $valueL');
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 30);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 20);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad10_2(valueW, valueL) {
  print('Passed valueW: $valueW, valueL: $valueL');
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 20);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 30);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad11(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);

  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 32);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 32);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad12(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 * (5/96));

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 * (5/96));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad13_1(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 / 30);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 * (3/160));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad13_2(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 * (3/160));

  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 / 30);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad14_1(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);


  fEM1 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (10 - (15 * valueKDouble) + (6 * (valueKDouble * valueKDouble)));
  fEM1 = checkNumberIfNegative(fEM1 / 30);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble * valueKDouble) * (5 - (4 * valueKDouble));
  fEM2 = checkNumberIfPositive(fEM2 / 20);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad14_2(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 =  valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble * valueKDouble) * (5 - (4 * valueKDouble));
  fEM1 = checkNumberIfNegative(fEM1 / 20);


  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (10 - (15 * valueKDouble) + (6 * (valueKDouble * valueKDouble)));
  fEM2 = checkNumberIfPositive(fEM2 / 30);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad15_1(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
 
  fEM1 =  valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 * (23/960));


  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 * (7/960));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad15_2(valueW, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
 
  fEM1 =  valueWDouble * (valueLDouble * valueLDouble);
  fEM1 = checkNumberIfNegative(fEM1 * (7/960));


  fEM2 = valueWDouble * (valueLDouble * valueLDouble);
  fEM2 = checkNumberIfPositive(fEM2 * (23/960));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad16_1(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 =  valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (10 - (10 * valueKDouble) + (3 * (valueKDouble * valueKDouble)));
  fEM1 = checkNumberIfNegative(fEM1 / 60);


  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble * valueKDouble) * (5 - (3 * valueKDouble));
  fEM2 = checkNumberIfPositive(fEM2 / 60);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad16_2(valueW, valueL, valueK) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueWDouble = double.parse(valueW);
  double valueLDouble = double.parse(valueL);
  double valueKDouble = double.parse(valueK);

  fEM1 =  valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble * valueKDouble) * (5 - (3 * valueKDouble));
  fEM1 = checkNumberIfNegative(fEM1 / 60);

  fEM2 = valueWDouble * (valueLDouble * valueLDouble) * (valueKDouble * valueKDouble) * (10 - (10 * valueKDouble) + (3 * (valueKDouble * valueKDouble)));
  fEM2 = checkNumberIfPositive(fEM2 / 60);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad17_1(valueW1, valueW2, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueW1Double = double.parse(valueW1);
  double valueW2Double = double.parse(valueW2);
  double valueLDouble = double.parse(valueL);

  double valueW3 = valueW2Double - valueW1Double;

  fEM1 =  ((valueW1Double * (valueLDouble * valueLDouble)) / 12) + ((valueW3 * (valueLDouble * valueLDouble)) / 20 );
  fEM1 = checkNumberIfNegative(fEM1);

  fEM2 = ((valueW1Double * (valueLDouble * valueLDouble)) / 12) + ((valueW3 * (valueLDouble * valueLDouble)) / 30 );
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad17_2(valueW1, valueW2, valueL) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueW1Double = double.parse(valueW1);
  double valueW2Double = double.parse(valueW2);
  double valueLDouble = double.parse(valueL);

  double valueW3 = valueW2Double - valueW1Double;


  fEM1 =  ((valueW1Double * (valueLDouble * valueLDouble)) / 12) + ((valueW3 * (valueLDouble * valueLDouble)) / 30 );
  fEM1 = checkNumberIfNegative(fEM1);

  fEM2 = ((valueW1Double * (valueLDouble * valueLDouble)) / 12) + ((valueW3 * (valueLDouble * valueLDouble)) / 20 );
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<double> getLoad18(valueM, valueL, valueK1) {
  double fEM1 = 0;
  double fEM2 = 0;

  double valueMDouble = double.parse(valueM);
  double valueLDouble = double.parse(valueL);
  double valueK1Double = double.parse(valueK1);

  double valueK2 = valueLDouble - valueK1Double;

  fEM1 = valueMDouble * valueK2 * (1 - (3 * valueK1));
  fEM1 = checkNumberIfNegative(fEM1);

  fEM2 = valueMDouble * valueK1 * (1 - (3 * valueK2));
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}
