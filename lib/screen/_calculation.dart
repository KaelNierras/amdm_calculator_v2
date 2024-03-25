// ignore_for_file: library_private_types_in_public_api

import 'package:amdm_calculator/utils/helper_widget_function.dart';
import 'package:flutter/material.dart';

import '../utils/_enum.dart';
import '../utils/_maps.dart';

class Calculation extends StatefulWidget {
  final String loadInAB;
  final String loadInBC;
  final String loadInOverhangAName;
  final String loadInOverhangCName;

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

  const Calculation({
    super.key,
    required this.loadInAB,
    required this.loadInBC,
    required this.loadInOverhangAName,
    required this.loadInOverhangCName,
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

  Widget loading1Combination() {
    return Column(
      children: [
        const Text('Span AB:'),
        Text('Load P: ${widget.loadABValueP!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        Text('Length A: ${widget.lengthABValueA!}'),
        const Text('Span BC:'),
        Text('Load P: ${widget.loadBCValueP!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
        Text('Length A: ${widget.lengthBCValueA!}'),
      ],
    );
  }

  Widget loading2Combination() {
    return Column(
      children: [
        const Text('Span AB:'),
        Text('Load P: ${widget.loadABValueP!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        const Text('Span BC:'),
        Text('Load P: ${widget.loadBCValueP!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
      ],
    );
  }

  Widget loading5Combination() {
    return Column(
      children: [
        const Text('Span AB:'),
        Text('Load W: ${widget.loadABValueW!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        const Text('Span BC:'),
        Text('Load W: ${widget.loadBCValueW!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
      ],
    );
  }

  Widget loading7Combination() {
    return Column(
      children: [
        const Text('Span AB:'),
        Text('Load W: ${widget.loadABValueW!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        Text('Length K: ${widget.lengthABValueK!}'),
        const Text('Span BC:'),
        Text('Load W: ${widget.loadBCValueW!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
        Text('Length K: ${widget.lengthBCValueK!}'),
      ],
    );
  }

  Widget loading17Combination() {
    return Column(
      children: [
        const Text('Span AB:'),
        Text('Load W1: ${widget.loadABValueW!}'),
        Text('Load W2: ${widget.loadABValueW2!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        const Text('Span BC:'),
        Text('Load W: ${widget.loadBCValueW!}'),
        Text('Load W2: ${widget.loadBCValueW2!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
      ],
    );
  }

  Widget loading18Combination() {
    return Column(
      children: [
        const Text('Span AB:'),
        Text('Moment M: ${widget.momentABValue!}'),
        Text('Length L: ${widget.lengthABValueL!}'),
        Text('Length K1: ${widget.lengthABValueK1!}'),
        const Text('Span BC:'),
        Text('Moment M: ${widget.momentBCValue!}'),
        Text('Length L: ${widget.lengthBCValueL!}'),
        Text('Length K1: ${widget.lengthBCValueK1!}'),
      ],
    );
  }

Widget getLoadingCalculation(String spanAb, String spanBc) {
    print(spanAb);
    print(spanBc);
    Span spanAB = getSpanFromString(spanAb);
    Span spanBC = getSpanFromString(spanBc);
    Loading? loading = combinations[spanAB]![spanBC];
    switch (loading) {
      case Loading.loading1Combination:
        return loading1Combination();
      case Loading.loading2Combination:
        return loading2Combination();
      // ... add the rest of the cases here
      default:
        throw Exception('Invalid combination');
    }
  }

  Widget checkAndBuild(String valueP, String valueW, String contains, Widget Function() buildWidget) {
  if (valueP.contains(contains) == true && valueW.contains(contains) == true) {
    return buildWidget();
  }
  return const SizedBox.shrink();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Calculation'),
            getLoadingCalculation(widget.loadInAB, widget.loadInBC)
          ],
        ),
      ),
    );
  }
}
