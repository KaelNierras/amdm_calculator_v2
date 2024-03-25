// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:amdm_calculator/utils/helper_widget_function.dart';
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

  @override
  void initState() {
    super.initState();
    widget.loadInAB = widget.loadInAB!.replaceAll('_', ' ');
    widget.loadInBC = widget.loadInBC!.replaceAll('_', ' ');
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Unit:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.selectedMomentUnit!,
            ),
            if(widget.loadInOverhangAName != '')
            Text(
              widget.loadInOverhangAName!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (loadInOverhangAMap.containsKey(widget.loadInOverhangAName)) ...[
              loadInOverhangAMap[widget.loadInOverhangAName]!()
            ],
            Text(
              widget.loadInAB!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            addVerticalSpace(5),
            if (loadInABMap.containsKey(widget.loadInAB)) ...[
              loadInABMap[widget.loadInAB]!()
            ],
            addVerticalSpace(10),
            Text(
              widget.loadInBC!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            addVerticalSpace(5),
            if (loadInBCMap.containsKey(widget.loadInBC)) ...[
              loadInBCMap[widget.loadInBC]!()
            ],
            addVerticalSpace(10),
            if(widget.loadInOverhangCName != '')
            Text(
              widget.loadInOverhangCName!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (loadInOverhangCMap.containsKey(widget.loadInOverhangCName)) ...[
              loadInOverhangCMap[widget.loadInOverhangCName]!()
            ],
          ],
        ),
      ),
    );
  }
}
