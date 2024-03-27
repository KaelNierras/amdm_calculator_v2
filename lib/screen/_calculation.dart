// ignore_for_file: library_private_types_in_public_api, must_be_immutable
import 'package:amdm_calculator/utils/_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/helper_widget_function.dart';
import '../utils/_variables_calculation.dart';

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

  void simpleSimpleInit() {
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

    finalAnswer = fEMAB2;
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
        finalAnswer = finalAnswer + bMAB2 + cOAB2;
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

    finalAnswer = finalAnswer + bMAB2 + cOAB2;
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
    widget.loadInAB = widget.loadInAB!.replaceAll('_', ' ');
    widget.loadInBC = widget.loadInBC!.replaceAll('_', ' ');

    if (widget.loadInAB!.contains('SIMPLE') &&
        widget.loadInBC!.contains('SIMPLE')) {
      simpleSimpleInit();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation'),
      ),
      body: SingleChildScrollView(
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
                Text(
                    'Final Answer: $finalAnswer or ${roundToFourDecimals(finalAnswer)} $selectedMomentABUnit'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
