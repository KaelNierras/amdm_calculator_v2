// ignore_for_file: library_private_types_in_public_api, must_be_immutable
import 'dart:ui';

import 'package:amdm_calculator/utils/_variables.dart';
import 'package:amdm_calculator/utils/formulas/overhangA.dart';
import 'package:amdm_calculator/utils/formulas/overhangC.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/helper_widget_function.dart';
import '../utils/formulas/simpleFixed.dart';
import '../utils/_variables_calculation.dart';
import '../theme/theme_constants.dart';

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
  List<double> simpleFixedCalculation(dfAB1Value, dfBC2Value) {
    List<double> bCCalculation() {
      double fEMBC1 = 0;
      double fEMBC2 = 0;

      if (widget.loadInBC!.contains('BC 1')  && widget.loadInBC!.length <= 16 ) {
        print('true');
        fEMBC1 = getLoad1(widget.loadBCValueP!, widget.lengthBCValueL!,
            widget.lengthBCValueA!)[0];
        fEMBC2 = getLoad1(widget.loadBCValueP!, widget.lengthBCValueL!,
            widget.lengthBCValueA!)[1];
      } else if (widget.loadInBC!.contains('BC 2')) {
        fEMBC1 = getLoad2(widget.loadBCValueP!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad2(widget.loadBCValueP!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 3')) {
        fEMBC1 = getLoad3(widget.loadBCValueP!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad3(widget.loadBCValueP!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 4')) {
        fEMBC1 = getLoad4(widget.loadBCValueP!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad4(widget.loadBCValueP!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 5')) {
        fEMBC1 = getLoad5(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad5(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 6  1')) {
        fEMBC1 = getLoad6_1(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad6_1(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 6  2')) {
        fEMBC1 = getLoad6_2(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad6_2(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 7  1')) {
        fEMBC1 = getLoad7_1(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad7_1(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 7  2')) {
        fEMBC1 = getLoad7_2(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad7_2(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 8')) {
        fEMBC1 = getLoad8(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad8(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 9')) {
        fEMBC1 = getLoad9(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad9(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 10  1')) {
        fEMBC1 = getLoad10_1(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad10_1(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 10  1')) {
        fEMBC1 = getLoad10_1(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad10_1(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 10  2')) {
        fEMBC1 = getLoad10_2(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad10_2(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 11')) {
        fEMBC1 = getLoad11(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad11(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 12')) {
        fEMBC1 = getLoad12(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad12(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 13  1')) {
        fEMBC1 = getLoad13_1(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad13_1(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 13  2')) {
        fEMBC1 = getLoad13_2(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad13_2(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 14  1')) {
        fEMBC1 = getLoad14_1(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad14_1(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 14  2')) {
        fEMBC1 = getLoad14_2(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad14_2(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 15  1')) {
        fEMBC1 = getLoad15_1(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad15_1(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 15  2')) {
        fEMBC1 = getLoad15_2(widget.loadBCValueW!, widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad15_2(widget.loadBCValueW!, widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 16  1')) {
        fEMBC1 = getLoad16_1(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad16_1(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 16  2')) {
        fEMBC1 = getLoad16_2(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[0];
        fEMBC2 = getLoad16_2(widget.loadBCValueW!, widget.lengthBCValueL!,
            widget.lengthBCValueK!)[1];
      } else if (widget.loadInBC!.contains('BC 17  1')) {
        fEMBC1 = getLoad17_1(widget.loadABValueW!, widget.loadABValueW2!,
            widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad17_1(widget.loadABValueW!, widget.loadABValueW2!,
            widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 17  2')) {
        fEMBC1 = getLoad17_2(widget.loadABValueW!, widget.loadABValueW2!,
            widget.lengthBCValueL!)[0];
        fEMBC2 = getLoad17_2(widget.loadABValueW!, widget.loadABValueW2!,
            widget.lengthBCValueL!)[1];
      } else if (widget.loadInBC!.contains('BC 18')) {
        fEMBC1 = getLoad18(widget.momentBCValue!, widget.lengthBCValueL!,
            widget.lengthBCValueK1!)[0];
        fEMBC2 = getLoad18(widget.momentBCValue!, widget.lengthBCValueL!,
            widget.lengthBCValueK1!)[1];
      }

      return [fEMBC1, fEMBC2];
    }
    
    double fEMAB1 = 0;
    double fEMAB2 = 0;

    double fEMBC1 = 0;
    double fEMBC2 = 0;

    double dfAB1 = dfAB1Value;
    double dfBC2 = dfBC2Value;

    double lcmValue = lcm(double.parse(widget.lengthABValueL!),
        double.parse(widget.lengthBCValueL!));
    double k1 = getK(lcmValue, double.parse(widget.lengthABValueL!));
    double k2 = getK(lcmValue, double.parse(widget.lengthBCValueL!));
    double dfAB2 = getDfAB2(k1, k2);
    double dfBC1 = getDfBC1(k1, k2);
    dfBC1 = checkNumberIfPositive(dfBC1);

    if (widget.loadInAB!.contains('AB 1') && widget.loadInAB!.length <= 15) {
      fEMAB1 = getLoad1(widget.loadABValueP!, widget.lengthABValueL!,
          widget.lengthABValueA!)[0];
      fEMAB2 = getLoad1(widget.loadABValueP!, widget.lengthABValueL!,
          widget.lengthABValueA!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 2') ) {
      fEMAB1 = getLoad2(widget.loadABValueP!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad2(widget.loadABValueP!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 3')) {
      fEMAB1 = getLoad3(widget.loadABValueP!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad3(widget.loadABValueP!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 4')) {
      fEMAB1 = getLoad4(widget.loadABValueP!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad4(widget.loadABValueP!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 5')) {
      fEMAB1 = getLoad5(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad5(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 6  1')) {
      fEMAB1 = getLoad6_1(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad6_1(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 6  2')) {
      fEMAB1 = getLoad6_2(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad6_2(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 7  1')) {
      fEMAB1 = getLoad7_1(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[0];
      fEMAB2 = getLoad7_1(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 7  2')) {
      fEMAB1 = getLoad7_2(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[0];
      fEMAB2 = getLoad7_2(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 8')) {
      fEMAB1 = getLoad8(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[0];
      fEMAB2 = getLoad8(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 9')) {
      fEMAB1 = getLoad9(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[0];
      fEMAB2 = getLoad9(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 10  1')) {
      print('AB 10  1');
      fEMAB1 = getLoad10_1(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad10_1(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 10  2')) {
      print('AB 10  1');
      fEMAB1 = getLoad10_1(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad10_1(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 11')) {
      fEMAB1 = getLoad11(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad11(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 13  1')) {
      fEMAB1 = getLoad13_1(
        widget.loadABValueW!,
        widget.lengthABValueL!,
      )[0];
      fEMAB2 = getLoad13_1(
        widget.loadABValueW!,
        widget.lengthABValueL!,
      )[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 13  2')) {
      fEMAB1 = getLoad13_2(
        widget.loadABValueW!,
        widget.lengthABValueL!,
      )[0];
      fEMAB2 = getLoad13_2(
        widget.loadABValueW!,
        widget.lengthABValueL!,
      )[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 14  1')) {
      fEMAB1 = getLoad14_1(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[0];
      fEMAB2 = getLoad14_1(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 14  2')) {
      fEMAB1 = getLoad14_2(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[0];
      fEMAB2 = getLoad14_2(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 15  1')) {
      fEMAB1 = getLoad15_1(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad15_1(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 15  2')) {
      fEMAB1 = getLoad15_2(widget.loadABValueW!, widget.lengthABValueL!)[0];
      fEMAB2 = getLoad15_2(widget.loadABValueW!, widget.lengthABValueL!)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 16  1')) {
      fEMAB1 = getLoad16_1(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK)[0];
      fEMAB2 = getLoad16_1(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 16  2')) {
      fEMAB1 = getLoad16_2(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK)[0];
      fEMAB2 = getLoad16_2(widget.loadABValueW!, widget.lengthABValueL!,
          widget.lengthABValueK)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 17  1')) {
      fEMAB1 = getLoad17_1(widget.loadABValueW!, widget.loadABValueW2!,
          widget.lengthABValueL)[0];
      fEMAB2 = getLoad17_1(widget.loadABValueW!, widget.loadABValueW2!,
          widget.lengthABValueL)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 17  2')) {
      fEMAB1 = getLoad17_2(widget.loadABValueW!, widget.loadABValueW2!,
          widget.lengthABValueL)[0];
      fEMAB2 = getLoad17_2(widget.loadABValueW!, widget.loadABValueW2!,
          widget.lengthABValueL)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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
    } else if (widget.loadInAB!.contains('AB 18')) {
      fEMAB1 = getLoad18(widget.momentABValue!, widget.lengthABValueL!,
          widget.lengthABValueK1)[0];
      fEMAB2 = getLoad18(widget.momentABValue!, widget.lengthABValueL!,
          widget.lengthABValueK1)[1];

      fEMBC1 = bCCalculation()[0];
      fEMBC2 = bCCalculation()[1];

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

  void functionInit(fnc, value1, value2) {
    List<double> functionResult;
    if (fnc == 'simpleFixedCalculation') {
      functionResult = simpleFixedCalculation(value1, value2);
      
      k1 = functionResult[8];
      k2 = functionResult[9];

      dfAB1 = functionResult[0];
      dfAB2 = functionResult[1];
      dfBC1 = functionResult[2];
      dfBC2 = functionResult[3];

      fEMAB1 = checkNumberIfNegative(functionResult[4]);
      fEMAB2 = checkNumberIfPositive(functionResult[5]);
      fEMBC1 = checkNumberIfNegative(functionResult[6]);
      fEMBC2 = checkNumberIfPositive(functionResult[7]);

      if(widget.loadInOverhangAName != '') {
        if (widget.loadInOverhangAName!.contains('A 1') && widget.loadInOverhangAName!.length <= 12) 
        {
            bMAB1OverhangA = getOverhangALoad1(widget.loadOverhangABValueP!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueA!)[0];
        }

        else if (widget.loadInOverhangAName!.contains('A 2'))
        {
            bMAB1OverhangA = getOverhangALoad2(widget.loadOverhangABValueP!, widget.lengthOverhangABValueL!)[0];         
        }

        else if (widget.loadInOverhangAName!.contains('A 3'))
        {
            bMAB1OverhangA = getOverhangALoad3(widget.loadOverhangABValueP!, widget.lengthOverhangABValueL!)[0];     
        }

        else if (widget.loadInOverhangAName!.contains('A 4'))
        {
            bMAB1OverhangA = getOverhangALoad4(widget.loadOverhangABValueP!, widget.lengthOverhangABValueL!)[0];
            
        }

        else if (widget.loadInOverhangAName!.contains('A 5'))
        {
            bMAB1OverhangA = getOVerhangALoad5(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];
        }

        else if (widget.loadInOverhangAName!.contains('A 6  1'))
        {
            bMAB1OverhangA = getOverhangALoad6_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];         
        }

        else if (widget.loadInOverhangAName!.contains('A 6  2'))
        {
            bMAB1OverhangA = getOverhangALoad6_2(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];           
        }

        else if (widget.loadInOverhangAName!.contains('A 7  1'))
        {
            bMAB1OverhangA = getOverhangALoad7_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueK!)[0];      
        }

        else if (widget.loadInOverhangAName!.contains('A 7  2'))
        {
            bMAB1OverhangA = getOverhangALoad17_2(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueK!)[0];    
        }

        else if (widget.loadInOverhangAName!.contains('A 8'))
        {
            bMAB1OverhangA = getOverhangALoad8(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueK!)[0];     
        }

        else if (widget.loadInOverhangAName!.contains('A 9'))
        {
            bMAB1OverhangA = getOverhangALoad9(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueK!)[0]; 
        }

        else if (widget.loadInOverhangAName!.contains('A 10  1'))
        {
            bMAB1OverhangA = getOverhangALoad10_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];
        }

        else if (widget.loadInOverhangAName!.contains('A 10  2'))
        {
            bMAB1OverhangA = getOverhangALoad10_2(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];          
        }

        else if (widget.loadInOverhangAName!.contains('A 11'))
        {
            bMAB1OverhangA = getOverhangALoad11(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];
        }

        else if (widget.loadInOverhangAName!.contains('A 12'))
        {
            bMAB1OverhangA = getOverhangALoad12(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];   
        }

        else if (widget.loadInOverhangAName!.contains('A 13  1'))
        {
            bMAB1OverhangA = getOverhangALoad13_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];        
        }

        else if (widget.loadInOverhangAName!.contains('A 13  2'))
        {
            bMAB1OverhangA = getOverhangALoad13_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];       
        }

        else if (widget.loadInOverhangAName!.contains('A 14  1'))
        {
            bMAB1OverhangA = getOverhangALoad14_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueK!)[0];         
        }

        else if (widget.loadInOverhangAName!.contains('A 14  2'))
        {
            bMAB1OverhangA = getOverhangALoad14_2(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueK!)[0];   
        }

        else if (widget.loadInOverhangAName!.contains('A 15  1'))
        {
            bMAB1OverhangA = getOverhangALoad15_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];      
        }

        else if (widget.loadInOverhangAName!.contains('A 15  2'))
        {
            bMAB1OverhangA = getOverhangALoad15_2(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!)[0];
        }

        else if (widget.loadInOverhangAName!.contains('A 16  1'))
        {
            bMAB1OverhangA = getOverhangALoad16_1(widget.loadOverhangABValueW!, widget.lengthOverhangABValueK!)[0];      
        }

        else if (widget.loadInOverhangAName!.contains('A 16  2'))
        {
            bMAB1OverhangA = getOverhangALoad16_2(widget.loadOverhangABValueW!, widget.lengthOverhangABValueL!, widget.lengthOverhangABValueK!)[0];
            
        }

        else if (widget.loadInOverhangAName!.contains('A 17  1'))
        {
            bMAB1OverhangA = getOverhangALoad17_1(widget.loadOverhangABValueW!, widget.loadOverhangABValueW2!, widget.lengthOverhangABValueL!)[0]; 
        }

        else if (widget.loadInOverhangAName!.contains('A 17  2'))
        {
            bMAB1OverhangA = getOverhangALoad17_2(widget.loadOverhangABValueW!, widget.loadOverhangABValueW2!, widget.lengthOverhangABValueL!)[0];    
        }

        else if (widget.loadInOverhangAName!.contains('A 18'))
        {
            bMAB1OverhangA = getOverhangALoad18(widget.momentOverhangABValue!)[0];    
        }
      }


      if(widget.loadInOverhangCName != '') {
        if (widget.loadInOverhangCName!.contains('C 1') && widget.loadInOverhangCName!.length <= 12) 
        {
            bMABC2OverhangC = getOverhangCLoad1(widget.loadOverhangBCValueP!, widget.lengthOverhangBCValueA!)[0];
        }
        else if (widget.loadInOverhangCName!.contains('C 2')) 
        {
            bMABC2OverhangC = getOverhangCLoad2(widget.loadOverhangBCValueP!, widget.lengthOverhangBCValueL!)[0];
        }
        else if (widget.loadInOverhangCName!.contains('C 3')) 
        {
            bMABC2OverhangC = getOverhangCLoad3(widget.loadOverhangBCValueP!, widget.lengthOverhangBCValueL!)[0];     
        }
        else if (widget.loadInOverhangCName!.contains('C 4')) 
        {
            bMABC2OverhangC = getOverhangCLoad4(widget.loadOverhangBCValueP!, widget.lengthOverhangBCValueL!)[0];
        }
        else if (widget.loadInOverhangCName!.contains('C 5')) 
        {
            bMABC2OverhangC = getOverhangCLoad5(widget.loadOverhangBCValueW!, widget.lengthOverhangBCValueL!)[0];
        }
        else if (widget.loadInOverhangCName!.contains('C 6  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad6_1(widget.loadOverhangBCValueW!, widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 6  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad6_2(widget.loadOverhangBCValueW!, widget.lengthOverhangBCValueL!)[0]; 
        }
        else if (widget.loadInOverhangCName!.contains('C 7  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad7_1(widget.loadOverhangBCValueW!, widget.lengthOverhangBCValueK!)[0];    
        }
        else if (widget.loadInOverhangCName!.contains('C 7  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad7_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!, widget.lengthOverhangBCValueK!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 8')) 
        {
            bMABC2OverhangC = getOverhangCLoad8(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!, widget.lengthOverhangBCValueK!)[0];
        }
        else if (widget.loadInOverhangCName!.contains('C 9')) 
        {
            bMABC2OverhangC = getOverhangCLoad9(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!, widget.lengthOverhangBCValueK!)[0];
        }
        else if (widget.loadInOverhangCName!.contains('C 10  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad10_1(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];   
        }
        else if (widget.loadInOverhangCName!.contains('C 10  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad10_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];       
        }
        else if (widget.loadInOverhangCName!.contains('C 11')) 
        {
            bMABC2OverhangC = getOverhangCLoad11(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];    
        }
        else if (widget.loadInOverhangCName!.contains('C 12')) 
        {
            bMABC2OverhangC = getOverhangCLoad12(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];    
        }
        else if (widget.loadInOverhangCName!.contains('C 13  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad13_1(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 13  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad13_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 14  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad14_1(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!,widget.lengthOverhangBCValueK!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 14  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad14_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 15  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad15_1(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 15  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad15_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 15  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad15_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 16  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad16_1(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueL!,widget.lengthOverhangBCValueK!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 16  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad16_2(widget.loadOverhangBCValueW!,widget.lengthOverhangBCValueK!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 17  1')) 
        {
            bMABC2OverhangC = getOverhangCLoad17_1(widget.loadOverhangBCValueW!,widget.loadOverhangBCValueW2!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 17  2')) 
        {
            bMABC2OverhangC = getOverhangCLoad17_2(widget.loadOverhangBCValueW!,widget.loadOverhangBCValueW2!,widget.lengthOverhangBCValueL!)[0];  
        }
        else if (widget.loadInOverhangCName!.contains('C 18')) 
        {
            bMABC2OverhangC = getOverhangCLoad18(widget.momentOverhangBCValue!)[0];  
        }
      }
      
      bMAB1 = changeSign((fEMAB1 + bMAB1OverhangA) * dfAB1);
      bMAB2 = changeSign((fEMAB2 + fEMBC1) * dfAB2);
      bMBC1 = changeSign((fEMAB2 + fEMBC1) * dfBC1);
      bMBC2 = changeSign((fEMBC2 + bMABC2OverhangC) * dfBC2);

      cOAB1 = bMAB2 / 2;
      cOAB2 = bMAB1 / 2;
      cOBC1 = bMBC2 / 2;
      cOBC2 = bMBC1 / 2;

      finalAnswer = fEMAB2;

     
      print(finalAnswer);
    }
  }

  Widget headerTable() {
    return Column(
      children: [
        Table(
          border: TableBorder.all(), // Add a border to the table
          children: [
            TableRow(children: [
              const TableCell(
                child: Center(child: Text('K1')),
              ),
              TableCell(
                child: Center(child: Text(k1.toStringAsFixed(4))),
              ),
              const TableCell(
                child: Center(
                    child:
                        Text('k2')), // Empty cell to make k1 span two columns
              ),
              TableCell(
                child: Center(child: Text(k2.toStringAsFixed(4))),
              ),
            ]),
          ],
        ),
      ],
    );
  }

  Widget initTable() {
    return Column(
      children: [
        Table(
          border: TableBorder.all(), // Add a border to the table
          children: [
            TableRow(children: [
              const Center(child: Text('DF')),
              Center(child: Text(dfAB1.toStringAsFixed(4))),
              Center(child: Text(dfAB2.toStringAsFixed(4))),
              Center(child: Text(dfBC1.toStringAsFixed(4))),
              Center(child: Text(dfBC2.toStringAsFixed(4))),
            ]),
            TableRow(children: [
              const Center(child: Text('FEM')),
              Center(child: Text(fEMAB1.toStringAsFixed(4))),
              Center(child: Text(fEMAB2.toStringAsFixed(4))),
              Center(child: Text(fEMBC1.toStringAsFixed(4))),
              Center(child: Text(fEMBC2.toStringAsFixed(4))),
            ]),
          ],
        ),
      ],
    );
  }

  Widget initialLoop() {
    return Column(
      children: [
        Table(
          border: TableBorder.all(), // Add a border to the table
          children: [
            TableRow(children: [
              const Center(child: Text('BM')),
              Center(child: Text(bMAB1.toStringAsFixed(4))),
              Center(child: Text(bMAB2.toStringAsFixed(4))),
              Center(child: Text(bMBC1.toStringAsFixed(4))),
              Center(child: Text(bMBC2.toStringAsFixed(4))),
            ]),
            TableRow(children: [
              const Center(child: Text('CO')),
              Center(child: Text(cOAB1.toStringAsFixed(4))),
              Center(child: Text(cOAB2.toStringAsFixed(4))),
              Center(child: Text(cOBC1.toStringAsFixed(4))),
              Center(child: Text(cOBC2.toStringAsFixed(4))),
            ]),
          ],
        ),
      ],
    );
  }

  Table generateLoopingTable() {
    finalAnswer = finalAnswer + bMAB2 + cOAB2;
    print('Sheesh');
    print(finalAnswer);
    print(bMAB2);
    print(cOAB2);

    bMAB1 = changeSign(cOAB1 * dfAB1);
    bMAB2 = changeSign((cOAB2 + cOBC1) * dfAB2);

    bMBC1 = changeSign((cOAB2 + cOBC1) * dfBC1);
    bMBC2 = changeSign(cOBC2 * dfBC2);

    cOAB1 = bMAB2 / 2;

    if (checkNumberIfPositive(cOAB2) == checkNumberIfPositive(bMAB2)) {
      counter1++;
      if (counter1 == 2) {
        loopEnd = 0;
        counter1 = 0;
        finalAnswer = finalAnswer + bMAB2;
        print(finalAnswer);
        print(bMAB2);
        print(cOAB2);
        return Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                const TableCell(child: Center(child: Text('BM'))),
                TableCell(child: Center(child: Text(bMAB1.toStringAsFixed(4)))),
                TableCell(child: Center(child: Text(bMAB2.toStringAsFixed(4)))),
                TableCell(child: Center(child: Text(bMBC1.toStringAsFixed(4)))),
                TableCell(child: Center(child: Text(bMBC2.toStringAsFixed(4)))),
              ],
            ),
          ],
        );
      }
    }

    cOAB2 = bMAB1 / 2;

    if (checkNumberIfPositive(cOAB2) == checkNumberIfPositive(bMAB2)) {
      counter2++;
      if (counter2 == 2) {
        loopEnd = 0;
        counter2 = 0;
        finalAnswer = finalAnswer + bMAB2 + cOAB2;
        print(finalAnswer);
        print(bMAB2);
        print(cOAB2);
        return Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                const TableCell(child: Center(child: Text('BM'))),
                TableCell(child: Center(child: Text(bMAB1.toStringAsFixed(4)))),
                TableCell(child: Center(child: Text(bMAB2.toStringAsFixed(4)))),
                TableCell(child: Center(child: Text(bMBC1.toStringAsFixed(4)))),
                TableCell(child: Center(child: Text(bMBC2.toStringAsFixed(4)))),
              ],
            ),
          ],
        );
      }
    }

    cOBC1 = bMBC2 / 2;
    cOBC2 = bMBC1 / 2;

    // finalAnswer = finalAnswer + bMAB2 + cOAB2;
    // print(finalAnswer);
    // print(bMAB2);
    // print(cOAB2);
    return Table(
      border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            const TableCell(child: Center(child: Text('BM'))),
            TableCell(child: Center(child: Text(bMAB1.toStringAsFixed(4)))),
            TableCell(child: Center(child: Text(bMAB2.toStringAsFixed(4)))),
            TableCell(child: Center(child: Text(bMBC1.toStringAsFixed(4)))),
            TableCell(child: Center(child: Text(bMBC2.toStringAsFixed(4)))),
          ],
        ),
        TableRow(
          children: [
            const TableCell(child: Center(child: Text('CO'))),
            TableCell(child: Center(child: Text(cOAB1.toStringAsFixed(4)))),
            TableCell(child: Center(child: Text(cOAB2.toStringAsFixed(4)))),
            TableCell(child: Center(child: Text(cOBC1.toStringAsFixed(4)))),
            TableCell(child: Center(child: Text(cOBC2.toStringAsFixed(4)))),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    widget.loadInAB = widget.loadInAB!.replaceAll('.', '  ');
    widget.loadInBC = widget.loadInBC!.replaceAll('.', '  ');

    loopEnd = 1;
    counter1 = 0;
    counter2 = 0;
    bMAB1OverhangA = 0;
    bMABC2OverhangC = 0;


    if (widget.loadInAB!.contains('SIMPLE') &&
        widget.loadInBC!.contains('SIMPLE')) {
      functionInit('simpleFixedCalculation', 1, 1);
    }
    else if (widget.loadInAB!.contains('SIMPLE') &&
        widget.loadInBC!.contains('FIXED')) {
      functionInit('simpleFixedCalculation', 1, 0);
    }
    else if (widget.loadInAB!.contains('FIXED') &&
        widget.loadInBC!.contains('FIXED')) {
      functionInit('simpleFixedCalculation', 0, 0);
    }
    else if (widget.loadInAB!.contains('FIXED') &&
        widget.loadInBC!.contains('SIMPLE')) {
      functionInit('simpleFixedCalculation', 0, 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      headerTable(),
                      addVerticalSpace(10),
                      initTable(),
                      addVerticalSpace(10),
                      initialLoop(),
                      addVerticalSpace(10),
                      for (int i = 0; loopEnd != 0; i++) ...[
                        generateLoopingTable(),
                        addVerticalSpace(10)
                      ],
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                          style: TextStyle(fontSize: 16),
                          'Moment at Support B = '),
                      Card(
                        color: colorPrimary,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              style: const TextStyle(color: Colors.white),
                              '${roundToFourDecimals(finalAnswer)} $selectedMomentABUnit'),
                        ),
                      )
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
