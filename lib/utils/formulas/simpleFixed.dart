// ignore_for_file: file_names

import '../helper_widget_function.dart';

List<num> getLoad1(valueP, valueL, valueA) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueAnum = num.parse(valueA);
  num valueLnum = num.parse(valueL);

  num valueB = valueLnum - valueAnum;

  fEM1 = valuePnum * valueAnum * (valueB * valueB);
  fEM1 = checkNumberIfNegative(fEM1 / (valueLnum * valueLnum));

  fEM2 = valuePnum * (valueAnum * valueAnum) * valueB;
  fEM2 = checkNumberIfPositive(fEM2 / (valueLnum * valueLnum));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad2(valueP, valueL,) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM1 = valuePnum * valueLnum;
  fEM1 = checkNumberIfNegative(fEM1 / 8);

  fEM2 = valuePnum * valueLnum;
  fEM2 = checkNumberIfPositive(fEM2 / 8);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad3(valueP, valueL,) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM1 = valuePnum * valueLnum;
  fEM1 = checkNumberIfNegative(fEM1 * (2/9));

  fEM2 = valuePnum * valueLnum;
  fEM2 = checkNumberIfPositive(fEM2 * (2/9));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad4(valueP, valueL,) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valuePnum = num.parse(valueP);
  num valueLnum = num.parse(valueL);

  fEM1 = valuePnum * valueLnum;
  fEM1 = checkNumberIfNegative(fEM1 * (5/16));

  fEM2 = valuePnum * valueLnum;
  fEM2 = checkNumberIfPositive(fEM2 * (5/16));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}


List<num> getLoad5(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad6_1(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 * (11/192));

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 * (5/192));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad6_2(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 * (5/192));

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 * (11/192));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad7_1(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);


  fEM1 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (6 - (8 * valueKnum) + (3 * (valueKnum * valueKnum)));
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum * valueKnum) * (4 - (3 * valueKnum));
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad7_2(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum * valueKnum) * (4 - (3 * valueKnum));
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (6 - (8 * valueKnum) + (3 * (valueKnum * valueKnum)));
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad8(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (3 - (2 * valueKnum));
  fEM1 = checkNumberIfNegative(fEM1 / 6);

  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (3 - (2 * valueKnum));
  fEM2 = checkNumberIfPositive(fEM2 / 6);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad9(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 = valueWnum * (valueLnum * valueLnum) * (1 - (6 * (valueKnum * valueKnum)) + (4 * (valueKnum * valueKnum * valueKnum)));
  fEM1 = checkNumberIfNegative(fEM1 / 12);

  fEM2 = valueWnum * (valueLnum * valueLnum) * (1 - (6 * (valueKnum * valueKnum)) + (4 * (valueKnum * valueKnum * valueKnum)));
  fEM2 = checkNumberIfPositive(fEM2 / 12);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad10_1(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 30);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 20);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad10_2(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 20);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 30);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad11(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);

  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 32);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 32);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad12(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);


  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 * (5/96));

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 * (5/96));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad13_1(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);


  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 / 30);

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 * (3/160));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad13_2(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);


  fEM1 = valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 * (3/160));

  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 / 30);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad14_1(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);


  fEM1 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (10 - (15 * valueKnum) + (6 * (valueKnum * valueKnum)));
  fEM1 = checkNumberIfNegative(fEM1 / 30);

  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum * valueKnum) * (5 - (4 * valueKnum));
  fEM2 = checkNumberIfPositive(fEM2 / 20);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad14_2(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 =  valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum * valueKnum) * (5 - (4 * valueKnum));
  fEM1 = checkNumberIfNegative(fEM1 / 20);


  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (10 - (15 * valueKnum) + (6 * (valueKnum * valueKnum)));
  fEM2 = checkNumberIfPositive(fEM2 / 30);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad15_1(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
 
  fEM1 =  valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 * (23/960));


  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 * (7/960));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad15_2(valueW, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
 
  fEM1 =  valueWnum * (valueLnum * valueLnum);
  fEM1 = checkNumberIfNegative(fEM1 * (7/960));


  fEM2 = valueWnum * (valueLnum * valueLnum);
  fEM2 = checkNumberIfPositive(fEM2 * (23/960));

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad16_1(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 =  valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (10 - (10 * valueKnum) + (3 * (valueKnum * valueKnum)));
  fEM1 = checkNumberIfNegative(fEM1 / 60);


  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum * valueKnum) * (5 - (3 * valueKnum));
  fEM2 = checkNumberIfPositive(fEM2 / 60);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad16_2(valueW, valueL, valueK) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueWnum = num.parse(valueW);
  num valueLnum = num.parse(valueL);
  num valueKnum = num.parse(valueK);

  fEM1 =  valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum * valueKnum) * (5 - (3 * valueKnum));
  fEM1 = checkNumberIfNegative(fEM1 / 60);

  fEM2 = valueWnum * (valueLnum * valueLnum) * (valueKnum * valueKnum) * (10 - (10 * valueKnum) + (3 * (valueKnum * valueKnum)));
  fEM2 = checkNumberIfPositive(fEM2 / 60);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad17_1(valueW1, valueW2, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueW1num = num.parse(valueW1);
  num valueW2num = num.parse(valueW2);
  num valueLnum = num.parse(valueL);

  num valueW3 = valueW2num - valueW1num;

  fEM1 =  ((valueW1num * (valueLnum * valueLnum)) / 12) + ((valueW3 * (valueLnum * valueLnum)) / 20 );
  fEM1 = checkNumberIfNegative(fEM1);

  fEM2 = ((valueW1num * (valueLnum * valueLnum)) / 12) + ((valueW3 * (valueLnum * valueLnum)) / 30 );
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad17_2(valueW1, valueW2, valueL) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueW1num = num.parse(valueW1);
  num valueW2num = num.parse(valueW2);
  num valueLnum = num.parse(valueL);

  num valueW3 = valueW2num - valueW1num;


  fEM1 =  ((valueW1num * (valueLnum * valueLnum)) / 12) + ((valueW3 * (valueLnum * valueLnum)) / 30 );
  fEM1 = checkNumberIfNegative(fEM1);

  fEM2 = ((valueW1num * (valueLnum * valueLnum)) / 12) + ((valueW3 * (valueLnum * valueLnum)) / 20 );
  fEM2 = checkNumberIfPositive(fEM2);

  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}

List<num> getLoad18(valueM, valueL, valueK1) {
  num fEM1 = 0;
  num fEM2 = 0;

  num valueMnum = num.parse(valueM);
  num valueLnum = num.parse(valueL);
  num valueK1num = num.parse(valueK1);


  num valueK2 = valueLnum - valueK1num;

  fEM1 = valueMnum * valueK2 * (1 - (3 * valueK1num));
  fEM1 = checkNumberIfNegative(fEM1);


  fEM2 = valueMnum * valueK1num * (1 - (3 * valueK2));
  fEM2 = checkNumberIfPositive(fEM2);


  return [roundToFourDecimals(fEM1), roundToFourDecimals(fEM2)];
}
