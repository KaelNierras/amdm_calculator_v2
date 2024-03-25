// ignore_for_file: library_private_types_in_public_api, must_be_immutable
import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  String? loadInAB;
  String? loadInBC;
  String? loadInOverhangAName;
  String? loadInOverhangCName;

  final String? selectedMomentUnit;

  //Overhang Variable
  final String? overhangAValue;
  final String? selectedOverhangAUnit;

  final String? overhangCValue;
  final String? selectedOverhangCUnit;

  //Overhang A AB Load Variable

  //Load P AB Load Variable
  final String? loadOverhangABValueP;
  final String? selectedLoadOverhangABUnitP;

  //Load W AB Load Variable
  final String? loadOverhangABValueW;
  final String? selectedLoadOverhangABUnitW;

  //Load W2 AB Load Variable
  final String? loadOverhangABValueW2;
  final String? selectedLoadOverhangABUnitW2;

  //Length L AB Load Variable
  final String? lengthOverhangABValueL;
  final String? selectedLengthOverhangABUnitL;

  //Length A AB Load Variable
  final String? lengthOverhangABValueA;
  final String? selectedLengthOverhangABUnitA;

  //Length K AB Load Variable
  final String? lengthOverhangABValueK;
  final String? selectedLengthOverhangABUnitK;

  //Length K1 AB Load Variable
  final String? lengthOverhangABValueK1;
  final String? selectedLengthOverhangABUnitK1;

  //Moment AB Load Variable
  final String? momentOverhangABValue;
  final String? selectedMomentOverhangABUnit;

  //AB Load Variable

  //Load P AB Load Variable
  final String? loadABValueP;
  final String? selectedLoadABUnitP;

  //Load W AB Load Variable
  final String? loadABValueW;
  final String? selectedLoadABUnitW;

  //Load W2 AB Load Variable
  final String? loadABValueW2;
  final String? selectedLoadABUnitW2;

  //Length L AB Load Variable
  final String? lengthABValueL;
  final String? selectedLengthABUnitL;

  //Length A AB Load Variable
  final String? lengthABValueA;
  final String? selectedLengthABUnitA;

  //Length K AB Load Variable
  final String? lengthABValueK;
  final String? selectedLengthABUnitK;

  //Length K1 AB Load Variable
  final String? lengthABValueK1;
  final String? selectedLengthABUnitK1;

  //Moment AB Load Variable
  final String? momentABValue;
  final String? selectedMomentABUnit;

  //BC Load Variable

  //Load P BC Load Variable
  final String? loadBCValueP;
  final String? selectedLoadBCUnitP;

  //Load W BC Load Variable
  final String? loadBCValueW;
  final String? selectedLoadBCUnitW;

  //Load W BC Load Variable
  final String? loadBCValueW2;
  final String? selectedLoadBCUnitW2;

  //Length L BC Load Variable
  final String? lengthBCValueL;
  final String? selectedLengthBCUnitL;

  //Length A BC Load Variable
  final String? lengthBCValueA;
  final String? selectedLengthBCUnitA;

  //Length K BC Load Variable
  final String? lengthBCValueK;
  final String? selectedLengthBCUnitK;

  //Length K1 AB Load Variable
  final String? lengthBCValueK1;
  final String? selectedLengthBCUnitK1;

  //Moment BC Load Variable
  final String? momentBCValue;
  final String? selectedMomentBCUnit;

  //Overhang A BC Load Variable

  //Load P BC Load Variable
  final String? loadOverhangBCValueP;
  final String? selectedLoadOverhangBCUnitP;

  //Load W BC Load Variable
  final String? loadOverhangBCValueW;
  final String? selectedLoadOverhangBCUnitW;

  //Load W2 BC Load Variable
  final String? loadOverhangBCValueW2;
  final String? selectedLoadOverhangBCUnitW2;

  //Length L BC Load Variable
  final String? lengthOverhangBCValueL;
  final String? selectedLengthOverhangBCUnitL;

  //Length A BC Load Variable
  final String? lengthOverhangBCValueA;
  final String? selectedLengthOverhangBCUnitA;

  //Length K BC Load Variable
  final String? lengthOverhangBCValueK;
  final String? selectedLengthOverhangBCUnitK;

  //Length K1 BC Load Variable
  final String? lengthOverhangBCValueK1;
  final String? selectedLengthOverhangBCUnitK1;

  //Moment BC Load Variable
  final String? momentOverhangBCValue;
  final String? selectedMomentOverhangBCUnit;

  Calculation({
    super.key,
    this.loadInAB,
    this.loadInBC,
    this.loadInOverhangAName,
    this.loadInOverhangCName,
    this.selectedMomentUnit,
    this.overhangAValue,
    this.selectedOverhangAUnit,
    this.overhangCValue,
    this.selectedOverhangCUnit,
    this.loadOverhangABValueP,
    this.selectedLoadOverhangABUnitP,
    this.loadOverhangABValueW,
    this.selectedLoadOverhangABUnitW,
    this.loadOverhangABValueW2,
    this.selectedLoadOverhangABUnitW2,
    this.lengthOverhangABValueL,
    this.selectedLengthOverhangABUnitL,
    this.lengthOverhangABValueA,
    this.selectedLengthOverhangABUnitA,
    this.lengthOverhangABValueK,
    this.selectedLengthOverhangABUnitK,
    this.lengthOverhangABValueK1,
    this.selectedLengthOverhangABUnitK1,
    this.momentOverhangABValue,
    this.selectedMomentOverhangABUnit,
    this.loadABValueP,
    this.selectedLoadABUnitP,
    this.loadABValueW,
    this.selectedLoadABUnitW,
    this.loadABValueW2,
    this.selectedLoadABUnitW2,
    this.lengthABValueL,
    this.selectedLengthABUnitL,
    this.lengthABValueA,
    this.selectedLengthABUnitA,
    this.lengthABValueK,
    this.selectedLengthABUnitK,
    this.lengthABValueK1,
    this.selectedLengthABUnitK1,
    this.momentABValue,
    this.selectedMomentABUnit,
    this.loadBCValueP,
    this.selectedLoadBCUnitP,
    this.loadBCValueW,
    this.selectedLoadBCUnitW,
    this.loadBCValueW2,
    this.selectedLoadBCUnitW2,
    this.lengthBCValueL,
    this.selectedLengthBCUnitL,
    this.lengthBCValueA,
    this.selectedLengthBCUnitA,
    this.lengthBCValueK,
    this.selectedLengthBCUnitK,
    this.lengthBCValueK1,
    this.selectedLengthBCUnitK1,
    this.momentBCValue,
    this.selectedMomentBCUnit,
    this.loadOverhangBCValueP,
    this.selectedLoadOverhangBCUnitP,
    this.loadOverhangBCValueW,
    this.selectedLoadOverhangBCUnitW,
    this.loadOverhangBCValueW2,
    this.selectedLoadOverhangBCUnitW2,
    this.lengthOverhangBCValueL,
    this.selectedLengthOverhangBCUnitL,
    this.lengthOverhangBCValueA,
    this.selectedLengthOverhangBCUnitA,
    this.lengthOverhangBCValueK,
    this.selectedLengthOverhangBCUnitK,
    this.lengthOverhangBCValueK1,
    this.selectedLengthOverhangBCUnitK1,
    this.momentOverhangBCValue,
    this.selectedMomentOverhangBCUnit,
  });

  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  double k1 = 0;
  double k2 = 0;

  double dfAB1 = 0;
  double dfAB2 = 0;

  double dfBC1 = 0;
  double dfBC2 = 0;

  double fEMAB1 = 0;
  double fEMAB2 = 0;

  double fEMBC1 = 0;
  double fEMBC2 = 0;

  double bMAB1 = 0;
  double bMAB2 = 0;

  double bMBC1 = 0;
  double bMBC2 = 0;

  double cOAB1 = 0;
  double cOAB2 = 0;

  double cOBC1 = 0;
  double cOBC2 = 0;

  // Loading 1
  Widget loading1CombinationOverhangA() {
    return Column(
      children: [
        Text('Load P: ${widget.loadOverhangABValueP!}'),
        Text('Length L: ${widget.lengthOverhangABValueL!}'),
        Text('Length A: ${widget.lengthOverhangABValueA!}'),
      ],
    );
  }

  Widget loading1CombinationAB() {
    return Column(
      children: [
        Text('Load P: ${widget.loadABValueP!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        Text('Length A: ${widget.lengthABValueA!}'),
      ],
    );
  }

  Widget loading1CombinationBC() {
    return Column(
      children: [
        Text('Load P: ${widget.loadBCValueP!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
        Text('Length A: ${widget.lengthBCValueA!}'),
      ],
    );
  }

  Widget loading1CombinationOverhangC() {
    return Column(
      children: [
        Text('Load P: ${widget.loadOverhangBCValueP!}'),
        Text('Length L: ${widget.lengthOverhangBCValueL!}'),
        Text('Length A: ${widget.lengthOverhangBCValueA!}'),
      ],
    );
  }

  //Loading 2
  Widget loading2CombinationOverhangA() {
    return Column(
      children: [
        Text('Load P: ${widget.loadOverhangABValueP!}'),
        Text('Length L: ${widget.lengthOverhangABValueL!}'),
      ],
    );
  }

  Widget loading2CombinationAB() {
    return Column(
      children: [
        Text('Load P: ${widget.loadABValueP!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
      ],
    );
  }

  Widget loading2CombinationBC() {
    return Column(
      children: [
        Text('Load P: ${widget.loadBCValueP!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
      ],
    );
  }

  Widget loading2CombinationOverhangC() {
    return Column(
      children: [
        Text('Load P: ${widget.loadOverhangBCValueP!}'),
        Text('Length L: ${widget.lengthOverhangBCValueL!}'),
      ],
    );
  }

  //Loading 5
  Widget loading5CombinationOverhangA() {
    return Column(
      children: [
        Text('Load W: ${widget.loadOverhangABValueW!}'),
        Text('Length L: ${widget.lengthOverhangABValueL!}'),
      ],
    );
  }

  Widget loading5CombinationAB() {
    return Column(
      children: [
        Text('Load W: ${widget.loadABValueW!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
      ],
    );
  }

  Widget loading5CombinationBC() {
    return Column(
      children: [
        Text('Load W: ${widget.loadBCValueW!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
      ],
    );
  }

  Widget loading5CombinationOverhangC() {
    return Column(
      children: [
        Text('Load W: ${widget.loadOverhangBCValueW!}'),
        Text('Length L: ${widget.lengthOverhangBCValueL!}'),
      ],
    );
  }

  //Loading 7
  Widget loading7CombinationOverhangA() {
    return Column(
      children: [
        Text('Load W: ${widget.loadOverhangABValueW!}'),
        Text('Length L: ${widget.lengthOverhangABValueL!}'),
        Text('Length K: ${widget.lengthOverhangABValueK!}'),
      ],
    );
  }

  Widget loading7CombinationAB() {
    return Column(
      children: [
        Text('Load W: ${widget.loadABValueW!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        Text('Length K: ${widget.lengthABValueK!}'),
      ],
    );
  }

  Widget loading7CombinationBC() {
    return Column(
      children: [
        Text('Load W: ${widget.loadBCValueW!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
        Text('Length K: ${widget.lengthBCValueK!}'),
      ],
    );
  }

  Widget loading7CombinationOverhangC() {
    return Column(
      children: [
        Text('Load W: ${widget.loadOverhangBCValueW!}'),
        Text('Length L: ${widget.lengthOverhangBCValueL!}'),
        Text('Length K: ${widget.lengthOverhangBCValueK!}'),
      ],
    );
  }

  //Loading 17
  Widget loading17CombinationOverhangA() {
    return Column(
      children: [
        Text('Load W1: ${widget.loadOverhangABValueW!}'),
        Text('Load W2: ${widget.loadOverhangABValueW2!}'),
        Text('Length L: ${widget.lengthOverhangABValueL!}'),
      ],
    );
  }

  Widget loading17CombinationAB() {
    return Column(
      children: [
        Text('Load W1: ${widget.loadABValueW!}'),
        Text('Load W2: ${widget.loadABValueW2!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
      ],
    );
  }

  Widget loading17CombinationBC() {
    return Column(
      children: [
        Text('Load W1: ${widget.loadBCValueW!}'),
        Text('Load W2: ${widget.loadBCValueW2!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
      ],
    );
  }

  Widget loading17CombinationOverhangC() {
    return Column(
      children: [
        Text('Load W1: ${widget.loadOverhangBCValueW!}'),
        Text('Load W2: ${widget.loadOverhangBCValueW2!}'),
        Text('Length L: ${widget.lengthOverhangBCValueL!}'),
      ],
    );
  }

  //Loading 18
  Widget loading18CombinationOverhangA() {
    return Column(
      children: [
        Text('Moment M: ${widget.momentOverhangABValue!}'),
        Text('Length L: ${widget.lengthOverhangABValueL!}'),
        Text('Length K1: ${widget.lengthOverhangABValueK1!}'),
      ],
    );
  }

  Widget loading18CombinationAB() {
    return Column(
      children: [
        Text('Moment M: ${widget.momentABValue!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        Text('Length K1: ${widget.lengthABValueK1!}'),
      ],
    );
  }

  Widget loading18CombinationBC() {
    return Column(
      children: [
        Text('Moment M: ${widget.momentBCValue!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
        Text('Length K1: ${widget.lengthBCValueK1!}'),
      ],
    );
  }

  Widget loading18CombinationOverhangC() {
    return Column(
      children: [
        Text('Moment M: ${widget.momentOverhangBCValue!}'),
        Text('Length L: ${widget.lengthOverhangBCValueL!}'),
        Text('Length K1: ${widget.lengthOverhangBCValueK1!}'),
      ],
    );
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

  List<double> simpleSimple() {
    double fEMAB1 = 0;
    double fEMAB2 = 0;

    double fEMBC1 = 0;
    double fEMBC2 = 0;

    double lcmValue = lcm(double.parse(widget.lengthABValueL!),
        double.parse(widget.lengthBCValueL!));
    double k1 = getK(lcmValue, double.parse(widget.lengthABValueL!));
    double k2 = getK(lcmValue, double.parse(widget.lengthBCValueL!));
    double dfAB1 = 1;
    double dfBC2 = 1;
    double dfAB2 = getDfAB2(k1, k2);
    double dfBC1 = getDfBC1(k1, k2);
    dfBC1 = checkNumberIfPositive(dfBC1);

    if (widget.loadInAB!.contains('AB 5') ||
        widget.loadInAB!.contains('BC 5')) {
      if (widget.loadInAB!.contains('AB 5')) {
        fEMAB1 = getLoad5(widget.loadABValueW!, widget.lengthABValueL!)[0];
        fEMAB2 = getLoad5(widget.loadABValueW!, widget.lengthABValueL!)[1];
      } else if (widget.loadInAB!.contains('BC 5')) {
        fEMBC1 = getLoad5(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad5(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      }

      if (widget.loadInAB!.contains('AB 1') ||
          widget.loadInBC!.contains('BC 1')) {

        if (widget.loadInBC!.contains('BC 1')) {
          fEMBC1 = getLoad1(widget.loadBCValueP!, widget.lengthBCValueL!,
              widget.lengthBCValueA!)[0];
          fEMBC2 = getLoad1(widget.loadBCValueP!, widget.lengthBCValueL!,
              widget.lengthBCValueA!)[1];
        }
      }

      return [
        dfAB1,
        dfAB2,
        dfBC1,
        dfBC2,
        fEMAB1,
        fEMAB2,
        fEMBC1,
        fEMBC2,
        k1,
        k2
      ];
    }
    return [];
  }

  @override
  void initState() {
    super.initState();
    widget.loadInAB = widget.loadInAB!.replaceAll('_', ' ');
    widget.loadInBC = widget.loadInBC!.replaceAll('_', ' ');

    if (widget.loadInAB!.contains('SIMPLE') &&
        widget.loadInBC!.contains('SIMPLE')) {
      k1 = simpleSimple()[8];
      k2 = simpleSimple()[9];

      dfAB1 = simpleSimple()[0];
      dfAB2 = simpleSimple()[1];
      dfBC1 = simpleSimple()[2];
      dfBC2 = simpleSimple()[3];

      fEMAB1 = checkNumberIfNegative(simpleSimple()[4]);
      fEMAB2 = checkNumberIfPositive(simpleSimple()[5]);
      fEMBC1 = checkNumberIfNegative(simpleSimple()[6]);
      fEMBC2 = checkNumberIfPositive(simpleSimple()[7]);

      bMAB1 = changeSign(fEMAB1 * dfAB1);
      bMAB2 = changeSign((fEMAB2 + fEMBC1) * dfAB2);
      bMBC1 = changeSign((fEMAB2 + fEMBC1) * dfBC1);
      bMBC2 = changeSign(fEMBC2 * dfBC2);

      cOAB1 = bMAB2 / 2;
      cOAB2 = bMAB1 / 2;
      cOBC1 = bMBC2 / 2;
      cOBC2 = bMBC1 / 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget Function()> loadInOverhangAMap = {
      'OVERHANG A 1': loading1CombinationOverhangA,
      'OVERHANG A 2': loading2CombinationOverhangA,
      'OVERHANG A 3': loading2CombinationOverhangA,
      'OVERHANG A 4': loading2CombinationOverhangA,
      'OVERHANG A 5': loading5CombinationOverhangA,
      'OVERHANG A 6.1': loading5CombinationOverhangA,
      'OVERHANG A 6.2': loading5CombinationOverhangA,
      'OVERHANG A 7.1': loading7CombinationOverhangA,
      'OVERHANG A 7.2': loading7CombinationOverhangA,
      'OVERHANG A 8': loading7CombinationOverhangA,
      'OVERHANG A 9': loading7CombinationOverhangA,
      'OVERHANG A 14.1': loading7CombinationOverhangA,
      'OVERHANG A 14.2': loading7CombinationOverhangA,
      'OVERHANG A 16.1': loading7CombinationOverhangA,
      'OVERHANG A 16.2': loading7CombinationOverhangA,
      'OVERHANG A 10.1': loading5CombinationOverhangA,
      'OVERHANG A 10.2': loading5CombinationOverhangA,
      'OVERHANG A 11': loading5CombinationOverhangA,
      'OVERHANG A 12': loading5CombinationOverhangA,
      'OVERHANG A 13.1': loading5CombinationOverhangA,
      'OVERHANG A 13.2': loading5CombinationOverhangA,
      'OVERHANG A 15.1': loading5CombinationOverhangA,
      'OVERHANG A 15.2': loading5CombinationOverhangA,
      'OVERHANG A 17.1': loading17CombinationOverhangA,
      'OVERHANG A 17.2': loading17CombinationOverhangA,
      'OVERHANG A 18': loading18CombinationOverhangA,
    };

    final Map<String, Widget Function()> loadInABMap = {
      'FIXED SPAN AB 1': loading1CombinationAB,
      'SIMPLE SPAN AB 1': loading1CombinationAB,
      'FIXED SPAN AB 2': loading2CombinationAB,
      'SIMPLE SPAN AB 2': loading2CombinationAB,
      'FIXED SPAN AB 3': loading2CombinationAB,
      'SIMPLE SPAN AB 3': loading2CombinationAB,
      'FIXED SPAN AB 4': loading2CombinationAB,
      'SIMPLE SPAN AB 4': loading2CombinationAB,
      'FIXED SPAN AB 5': loading5CombinationAB,
      'SIMPLE SPAN AB 5': loading5CombinationAB,
      'FIXED SPAN AB 6.1': loading5CombinationAB,
      'SIMPLE SPAN AB 6.1': loading5CombinationAB,
      'FIXED SPAN AB 6.2': loading5CombinationAB,
      'SIMPLE SPAN AB 6.2': loading5CombinationAB,
      'FIXED SPAN AB 7.1': loading7CombinationAB,
      'SIMPLE SPAN AB 7.1': loading7CombinationAB,
      'FIXED SPAN AB 7.2': loading7CombinationAB,
      'SIMPLE SPAN AB 7.2': loading7CombinationAB,
      'FIXED SPAN AB 8': loading7CombinationAB,
      'SIMPLE SPAN AB 8': loading7CombinationAB,
      'FIXED SPAN AB 9': loading7CombinationAB,
      'SIMPLE SPAN AB 9': loading7CombinationAB,
      'FIXED SPAN AB 14.1': loading7CombinationAB,
      'SIMPLE SPAN AB 14.1': loading7CombinationAB,
      'FIXED SPAN AB 14.2': loading7CombinationAB,
      'SIMPLE SPAN AB 14.2': loading7CombinationAB,
      'FIXED SPAN AB 16.1': loading7CombinationAB,
      'SIMPLE SPAN AB 16.1': loading7CombinationAB,
      'FIXED SPAN AB 16.2': loading7CombinationAB,
      'SIMPLE SPAN AB 16.2': loading7CombinationAB,
      'FIXED SPAN AB 10.1': loading5CombinationAB,
      'SIMPLE SPAN AB 10.1': loading5CombinationAB,
      'FIXED SPAN AB 10.2': loading5CombinationAB,
      'SIMPLE SPAN AB 10.2': loading5CombinationAB,
      'FIXED SPAN AB 11': loading5CombinationAB,
      'SIMPLE SPAN AB 11': loading5CombinationAB,
      'FIXED SPAN AB 12': loading5CombinationAB,
      'SIMPLE SPAN AB 12': loading5CombinationAB,
      'FIXED SPAN AB 13.1': loading5CombinationAB,
      'SIMPLE SPAN AB 13.1': loading5CombinationAB,
      'FIXED SPAN AB 13.2': loading5CombinationAB,
      'SIMPLE SPAN AB 13.2': loading5CombinationAB,
      'FIXED SPAN AB 15.1': loading5CombinationAB,
      'SIMPLE SPAN AB 15.1': loading5CombinationAB,
      'FIXED SPAN AB 15.2': loading5CombinationAB,
      'SIMPLE SPAN AB 15.2': loading5CombinationAB,
      'FIXED SPAN AB 17.1': loading17CombinationAB,
      'SIMPLE SPAN AB 17.1': loading17CombinationAB,
      'FIXED SPAN AB 17.2': loading17CombinationAB,
      'SIMPLE SPAN AB 17.2': loading17CombinationAB,
      'FIXED SPAN AB 18': loading18CombinationAB,
      'SIMPLE SPAN AB 18': loading18CombinationAB,
    };

    final Map<String, Widget Function()> loadInBCMap = {
      'FIXED SPAN BC 1': loading1CombinationBC,
      'SIMPLE SPAN BC 1': loading1CombinationBC,
      'FIXED SPAN BC 2': loading2CombinationBC,
      'SIMPLE SPAN BC 2': loading2CombinationBC,
      'FIXED SPAN BC 3': loading2CombinationBC,
      'SIMPLE SPAN BC 3': loading2CombinationBC,
      'FIXED SPAN BC 4': loading2CombinationBC,
      'SIMPLE SPAN BC 4': loading2CombinationBC,
      'FIXED SPAN BC 5': loading5CombinationBC,
      'SIMPLE SPAN BC 5': loading5CombinationBC,
      'FIXED SPAN BC 6.1': loading5CombinationBC,
      'SIMPLE SPAN BC 6.1': loading5CombinationBC,
      'FIXED SPAN BC 6.2': loading5CombinationBC,
      'SIMPLE SPAN BC 6.2': loading5CombinationBC,
      'FIXED SPAN BC 7.1': loading7CombinationBC,
      'SIMPLE SPAN BC 7.1': loading7CombinationBC,
      'FIXED SPAN BC 7.2': loading7CombinationBC,
      'SIMPLE SPAN BC 7.2': loading7CombinationBC,
      'FIXED SPAN BC 8': loading7CombinationBC,
      'SIMPLE SPAN BC 8': loading7CombinationBC,
      'FIXED SPAN BC 9': loading7CombinationBC,
      'SIMPLE SPAN BC 9': loading7CombinationBC,
      'FIXED SPAN BC 14.1': loading7CombinationBC,
      'SIMPLE SPAN BC 14.1': loading7CombinationBC,
      'FIXED SPAN BC 14.2': loading7CombinationBC,
      'SIMPLE SPAN BC 14.2': loading7CombinationBC,
      'FIXED SPAN BC 16.1': loading7CombinationBC,
      'SIMPLE SPAN BC 16.1': loading7CombinationBC,
      'FIXED SPAN BC 16.2': loading7CombinationBC,
      'SIMPLE SPAN BC 16.2': loading7CombinationBC,
      'FIXED SPAN BC 10.1': loading5CombinationBC,
      'SIMPLE SPAN BC 10.1': loading5CombinationBC,
      'FIXED SPAN BC 10.2': loading5CombinationBC,
      'SIMPLE SPAN BC 10.2': loading5CombinationBC,
      'FIXED SPAN BC 11': loading5CombinationBC,
      'SIMPLE SPAN BC 11': loading5CombinationBC,
      'FIXED SPAN BC 12': loading5CombinationBC,
      'SIMPLE SPAN BC 12': loading5CombinationBC,
      'FIXED SPAN BC 13.1': loading5CombinationBC,
      'SIMPLE SPAN BC 13.1': loading5CombinationBC,
      'FIXED SPAN BC 13.2': loading5CombinationBC,
      'SIMPLE SPAN BC 13.2': loading5CombinationBC,
      'FIXED SPAN BC 15.1': loading5CombinationBC,
      'SIMPLE SPAN BC 15.1': loading5CombinationBC,
      'FIXED SPAN BC 15.2': loading5CombinationBC,
      'SIMPLE SPAN BC 15.2': loading5CombinationBC,
      'FIXED SPAN BC 17.1': loading17CombinationBC,
      'SIMPLE SPAN BC 17.1': loading17CombinationBC,
      'FIXED SPAN BC 17.2': loading17CombinationBC,
      'SIMPLE SPAN BC 17.2': loading17CombinationBC,
      'FIXED SPAN BC 18': loading18CombinationBC,
      'SIMPLE SPAN BC 18': loading18CombinationBC,
    };

    final Map<String, Widget Function()> loadInOverhangCMap = {
      'OVERHANG C 1': loading1CombinationOverhangC,
      'OVERHANG C 2': loading2CombinationOverhangC,
      'OVERHANG C 3': loading2CombinationOverhangC,
      'OVERHANG C 4': loading2CombinationOverhangC,
      'OVERHANG C 5': loading5CombinationOverhangC,
      'OVERHANG C 6.1': loading5CombinationOverhangC,
      'OVERHANG C 6.2': loading5CombinationOverhangC,
      'OVERHANG C 7.1': loading7CombinationOverhangC,
      'OVERHANG C 7.2': loading7CombinationOverhangC,
      'OVERHANG C 8': loading7CombinationOverhangC,
      'OVERHANG C 9': loading7CombinationOverhangC,
      'OVERHANG C 14.1': loading7CombinationOverhangC,
      'OVERHANG C 14.2': loading7CombinationOverhangC,
      'OVERHANG C 16.1': loading7CombinationOverhangC,
      'OVERHANG C 16.2': loading7CombinationOverhangC,
      'OVERHANG C 10.1': loading5CombinationOverhangC,
      'OVERHANG C 10.2': loading5CombinationOverhangC,
      'OVERHANG C 11': loading5CombinationOverhangC,
      'OVERHANG C 12': loading5CombinationOverhangC,
      'OVERHANG C 13.1': loading5CombinationOverhangC,
      'OVERHANG C 13.2': loading5CombinationOverhangC,
      'OVERHANG C 15.1': loading5CombinationOverhangC,
      'OVERHANG C 15.2': loading5CombinationOverhangC,
      'OVERHANG C 17.1': loading17CombinationOverhangC,
      'OVERHANG C 17.2': loading17CombinationOverhangC,
      'OVERHANG C 18': loading18CombinationOverhangC,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Calculation'),
              Table(
                border: TableBorder.all(), // Add a border to the table
                children: [
                  TableRow(children: [
                    const TableCell(
                      child: Text('K'),
                    ),
                    TableCell(
                      child: Text(k1.toStringAsFixed(4)),
                    ),
                    const TableCell(
                      child: Text(''), // Empty cell to make k1 span two columns
                    ),
                    TableCell(
                      child: Text(k2.toStringAsFixed(4)),
                    ),
                    const TableCell(
                      child: Text(''), // Empty cell to make k2 span two columns
                    ),
                  ]),
                  // Add more TableRow widgets for more data rows
                  TableRow(children: [
                    const Text('DF'),
                    Text(dfAB1.toStringAsFixed(4)),
                    Text(dfAB2.toStringAsFixed(4)),
                    Text(dfBC1.toStringAsFixed(4)),
                    Text(dfBC2.toStringAsFixed(4)),
                  ]),
                  TableRow(children: [
                    const Text('FEM'),
                    Text(fEMAB1.toStringAsFixed(4)),
                    Text(fEMAB2.toStringAsFixed(4)),
                    Text(fEMBC1.toStringAsFixed(4)),
                    Text(fEMBC2.toStringAsFixed(4)),
                  ]),
                  TableRow(children: [
                    const Text('BM'),
                    Text(bMAB1.toStringAsFixed(4)),
                    Text(bMAB2.toStringAsFixed(4)),
                    Text(bMBC1.toStringAsFixed(4)),
                    Text(bMBC2.toStringAsFixed(4)),
                  ]),
                  TableRow(children: [
                    const Text('CO'),
                    Text(cOAB1.toStringAsFixed(4)),
                    Text(cOAB2.toStringAsFixed(4)),
                    Text(cOBC1.toStringAsFixed(4)),
                    Text(cOBC2.toStringAsFixed(4)),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
