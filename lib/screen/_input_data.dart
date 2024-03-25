// ignore_for_file: library_private_types_in_public_api, constant_identifier_names, must_be_immutable

import 'package:amdm_calculator/widgets/custom_textfield_with_drop.dart';
import 'package:flutter/material.dart';
import '../utils/helper_widget_function.dart';
import '../widgets/custom_dropdown_text.dart';
import '../widgets/custom_floating_action_button.dart';
import '_calculation.dart';
import '../utils/_enum.dart';
import '../utils/_variables.dart';
import '../utils/_maps.dart';

class InputData extends StatefulWidget {
  String loadInAB;
  String loadInBC;
  String loadInOverhangAName;
  String loadInOverhangCName;

  InputData(
      {super.key,
      required this.loadInAB,
      required this.loadInBC,
      required this.loadInOverhangAName,
      required this.loadInOverhangCName});

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  @override
  initState() {
    super.initState();
    selectedMomentUnit = momentUnit.first;
  }

  //Overhang Header

  Widget overhangA() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Text(
          'Overhang A:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        addVerticalSpace(10),
      ],
    );
  }

  Widget overhangC() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Text(
          'Overhang C:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        addVerticalSpace(10),
      ],
    );
  }

  Widget buildCustomTextfieldWithDropdown({
    required String label,
    required List<String> items,
    required Function(String) onSelectedUnitChanged,
    required Function(String) onValueChanged,
  }) {
    return CustomTextfieldWithDropdown(
      label: label,
      items: items,
      onChanged: (selectedItem) {
        onSelectedUnitChanged(selectedItem!);
      },
      onTextChanged: (String value) {
        onValueChanged(value);
      },
    );
  }

  //Loading 1 Combination
  Widget loading1Combination(String type) {
    return Column(
      children: [
        buildCustomTextfieldWithDropdown(
          label: 'Enter Load (P)',
          items: loadUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLoadABUnitP = selectedItem;
              } else if (type == 'BC') {
                selectedLoadBCUnitP = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLoadOverhangABUnitP = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLoadOverhangBCUnitP = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                loadABValueP = value;
              } else if (type == 'BC') {
                loadBCValueP = value;
              } else if (type == 'OverhangA') {
                loadOverhangABValueP = value;
              } else if (type == 'OverhangC') {
                loadOverhangBCValueP = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitL = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitL = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitL = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitL = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueL = value;
              } else if (type == 'BC') {
                lengthBCValueL = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueL = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueL = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (a)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitA = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitA = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitA = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitA = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueA = value;
              } else if (type == 'BC') {
                lengthBCValueA = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueA = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueA = value;
              }
            });
          },
        ),
      ],
    );
  }

  //Loading 2 Combination
  Widget loading2Combination(String type) {
    return Column(
      children: [
        buildCustomTextfieldWithDropdown(
          label: 'Enter Load (P)',
          items: loadUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLoadABUnitP = selectedItem;
              } else if (type == 'BC') {
                selectedLoadBCUnitP = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLoadOverhangABUnitP = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLoadOverhangBCUnitP = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                loadABValueP = value;
              } else if (type == 'BC') {
                loadBCValueP = value;
              } else if (type == 'OverhangA') {
                loadOverhangABValueP = value;
              } else if (type == 'OverhangC') {
                loadOverhangBCValueP = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitL = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitL = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitL = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitL = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueL = value;
              } else if (type == 'BC') {
                lengthBCValueL = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueL = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueL = value;
              }
            });
          },
        ),
      ],
    );
  }

  //Loading 5 Combination
  Widget loading5Combination(String type) {
    return Column(
      children: [
        buildCustomTextfieldWithDropdown(
          label: 'Enter Load (W)',
          items: loadUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLoadABUnitW = selectedItem;
              } else if (type == 'BC') {
                selectedLoadBCUnitW = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLoadOverhangABUnitW = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLoadOverhangBCUnitW = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                loadABValueW = value;
              } else if (type == 'BC') {
                loadBCValueW = value;
              } else if (type == 'OverhangA') {
                loadOverhangABValueW = value;
              } else if (type == 'OverhangC') {
                loadOverhangBCValueW = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitL = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitL = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitL = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitL = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueL = value;
              } else if (type == 'BC') {
                lengthBCValueL = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueL = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueL = value;
              }
            });
          },
        ),
      ],
    );
  }

  //Loading 7 Combination
  Widget loading7Combination(String type) {
    return Column(
      children: [
        buildCustomTextfieldWithDropdown(
          label: 'Enter Load (W)',
          items: loadUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLoadABUnitW = selectedItem;
              } else if (type == 'BC') {
                selectedLoadBCUnitW = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLoadOverhangABUnitW = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLoadOverhangBCUnitW = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                loadABValueW = value;
              } else if (type == 'BC') {
                loadBCValueW = value;
              } else if (type == 'OverhangA') {
                loadOverhangABValueW = value;
              } else if (type == 'OverhangC') {
                loadOverhangBCValueW = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitL = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitL = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitL = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitL = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueL = value;
              } else if (type == 'BC') {
                lengthBCValueL = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueL = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueL = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (K)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitK = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitK = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitK = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitK = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueK = value;
              } else if (type == 'BC') {
                lengthBCValueK = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueK = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueK = value;
              }
            });
          },
        ),
      ],
    );
  }

  //Loading 17 Combination
  Widget loading17Combination(String type) {
    return Column(
      children: [
        buildCustomTextfieldWithDropdown(
          label: 'Enter Load (W1)',
          items: loadUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLoadABUnitW = selectedItem;
              } else if (type == 'BC') {
                selectedLoadBCUnitW = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLoadOverhangABUnitW = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLoadOverhangBCUnitW = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                loadABValueW = value;
              } else if (type == 'BC') {
                loadBCValueW = value;
              } else if (type == 'OverhangA') {
                loadOverhangABValueW = value;
              } else if (type == 'OverhangC') {
                loadOverhangBCValueW = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Load (W2)',
          items: loadUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLoadABUnitW2 = selectedItem;
              } else if (type == 'BC') {
                selectedLoadBCUnitW2 = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLoadOverhangABUnitW2 = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLoadOverhangBCUnitW2 = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                loadABValueW2 = value;
              } else if (type == 'BC') {
                loadBCValueW2 = value;
              } else if (type == 'OverhangA') {
                loadOverhangABValueW2 = value;
              } else if (type == 'OverhangC') {
                loadOverhangBCValueW2 = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitL = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitL = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitL = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitL = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueL = value;
              } else if (type == 'BC') {
                lengthBCValueL = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueL = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueL = value;
              }
            });
          },
        ),
      ],
    );
  }

  //Loading 18 Combination
  Widget loading18Combination(String type) {
    return Column(
      children: [
        buildCustomTextfieldWithDropdown(
          label: 'Enter Moment (M)',
          items: momentUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedMomentABUnit = selectedItem;
              } else if (type == 'BC') {
                selectedMomentBCUnit = selectedItem;
              } else if (type == 'OverhangA') {
                selectedMomentOverhangAUnit = selectedItem;
              } else if (type == 'OverhangC') {
                selectedMomentOverhangCUnit = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                momentABValue = value;
              } else if (type == 'BC') {
                momentBCValue = value;
              } else if (type == 'OverhangA') {
                momentOverhangAValue = value;
              } else if (type == 'OverhangC') {
                momentOverhangCValue = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitL = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitL = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitL = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitL = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueL = value;
              } else if (type == 'BC') {
                lengthBCValueL = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueL = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueL = value;
              }
            });
          },
        ),
        addVerticalSpace(10),
        buildCustomTextfieldWithDropdown(
          label: 'Enter Length (K1)',
          items: lengthUnit,
          onSelectedUnitChanged: (selectedItem) {
            setState(() {
              if (type == 'AB') {
                selectedLengthABUnitK1 = selectedItem;
              } else if (type == 'BC') {
                selectedLengthBCUnitK1 = selectedItem;
              } else if (type == 'OverhangA') {
                selectedLengthOverhangABUnitK1 = selectedItem;
              } else if (type == 'OverhangC') {
                selectedLengthOverhangBCUnitK1 = selectedItem;
              }
            });
          },
          onValueChanged: (value) {
            setState(() {
              if (type == 'AB') {
                lengthABValueK1 = value;
              } else if (type == 'BC') {
                lengthBCValueK1 = value;
              } else if (type == 'OverhangA') {
                lengthOverhangABValueK1 = value;
              } else if (type == 'OverhangC') {
                lengthOverhangBCValueK1 = value;
              }
            });
          },
        ),
      ],
    );
  }

  Calculation loading1Calculation() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,

      //Span AB
      loadABValueP: loadABValueP,
      lengthABValueL: lengthABValueL,
      lengthABValueA: lengthABValueA,

      //Span BC
      loadBCValueP: loadBCValueP,
      lengthBCValueL: lengthBCValueL,
      lengthBCValueA: lengthBCValueA,
    );
  }

  Calculation loading2Calculation() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,

      //Span AB
      loadABValueP: loadABValueP,
      lengthABValueL: lengthABValueL,

      //Span BC
      loadBCValueP: loadBCValueP,
      lengthBCValueL: lengthBCValueL,
    );
  }

  Calculation loading5Calculation() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,

      //Span AB
      loadABValueW: loadABValueW,
      lengthABValueL: lengthABValueL,

      //Span BC
      loadBCValueW: loadBCValueW,
      lengthBCValueL: lengthBCValueL,
    );
  }

  Calculation loading7Calculation() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,

      //Span AB
      loadABValueW: loadABValueW,
      lengthABValueL: lengthABValueL,
      lengthABValueK: lengthABValueK,

      //Span BC
      loadBCValueW: loadBCValueW,
      lengthBCValueL: lengthBCValueL,
      lengthBCValueK: lengthBCValueK,
    );
  }

  Calculation loading17Calculation() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,

      //Span AB
      loadABValueW: loadABValueW,
      loadABValueW2: loadABValueW2,
      lengthABValueL: lengthABValueL,

      //Span BC
      loadBCValueW: loadBCValueW,
      loadBCValueW2: loadABValueW2,
      lengthBCValueL: lengthBCValueL,
    );
  }

  Calculation loading18Calculation() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,

      //Span AB
      momentABValue: momentABValue,
      lengthABValueL: lengthABValueL,
      lengthABValueK: lengthABValueK,

      //Span BC
      momentBCValue: momentBCValue,
      lengthBCValueL: lengthBCValueL,
      lengthBCValueK: lengthBCValueK,
    );
  }



  Function getLoadingCalculation(Span spanAb, Span spanBc) {
    Loading? loading = combinations[spanAb]![spanBc];
    switch (loading) {
      case Loading.loading1Combination:
        return loading1Calculation;
      case Loading.loading2Combination:
        return loading2Calculation;
      // ... add the rest of the cases here
      default:
        throw Exception('Invalid combination');
    }
  }

  void gotoCalculationsTwoCombination() {
    Span spanAb = getSpanFromString(widget.loadInAB);
    Span spanBc = getSpanFromString(widget.loadInBC);
    Function calculationFunction = getLoadingCalculation(spanAb, spanBc);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => calculationFunction(),
      ),
    );
  }

  void gotoCalculationsFourCombination() {
    Map<String, Function> combinations = {
      //Combination 1
      'FIXED SPAN AB 1FIXED SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1Calculation,
      'SIMPLE SPAN AB 1SIMPLE SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1Calculation,
      'SIMPLE SPAN AB 1FIXED SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1Calculation,
      'FIXED SPAN AB 1SIMPLE SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1Calculation,
      // Add more combinations as needed
    };

    String currentCombination = widget.loadInAB +
        widget.loadInBC +
        widget.loadInOverhangAName +
        widget.loadInOverhangCName;

    if (combinations.containsKey(currentCombination)) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => combinations[currentCombination]!(),
        ),
      );
    }
  }

  void gotoCalculations() {
    if (widget.loadInOverhangAName != '' && widget.loadInOverhangCName != '') {
      widget.loadInAB = widget.loadInAB.replaceAll(' ', '_').toUpperCase();
      widget.loadInBC = widget.loadInBC.replaceAll(' ', '_').toUpperCase();
      gotoCalculationsFourCombination();
    } else {
      widget.loadInAB = widget.loadInAB.replaceAll(' ', '_').toUpperCase();
      widget.loadInBC = widget.loadInBC.replaceAll(' ', '_').toUpperCase();
      gotoCalculationsTwoCombination();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget Function(String)> loadInOverhangAMap = {
      'OVERHANG A 1': loading1Combination,
      'OVERHANG A 2': loading2Combination,
      'OVERHANG A 3': loading2Combination,
      'OVERHANG A 4': loading2Combination,
      'OVERHANG A 5': loading5Combination,
      'OVERHANG A 6.1': loading5Combination,
      'OVERHANG A 6.2': loading5Combination,
      'OVERHANG A 7.1': loading7Combination,
      'OVERHANG A 7.2': loading7Combination,
      'OVERHANG A 8': loading7Combination,
      'OVERHANG A 9': loading7Combination,
      'OVERHANG A 14.1': loading7Combination,
      'OVERHANG A 14.2': loading7Combination,
      'OVERHANG A 16.1': loading7Combination,
      'OVERHANG A 16.2': loading7Combination,
      'OVERHANG A 10.1': loading5Combination,
      'OVERHANG A 10.2': loading5Combination,
      'OVERHANG A 11': loading5Combination,
      'OVERHANG A 12': loading5Combination,
      'OVERHANG A 13.1': loading5Combination,
      'OVERHANG A 13.2': loading5Combination,
      'OVERHANG A 15.1': loading5Combination,
      'OVERHANG A 15.2': loading5Combination,
      'OVERHANG A 17.1': loading17Combination,
      'OVERHANG A 17.2': loading17Combination,
      'OVERHANG A 18': loading18Combination,
    };

    final Map<String, Widget Function(String)> loadInABMap = {
      'FIXED SPAN AB 1': loading1Combination,
      'SIMPLE SPAN AB 1': loading1Combination,
      'FIXED SPAN AB 2': loading2Combination,
      'SIMPLE SPAN AB 2': loading2Combination,
      'FIXED SPAN AB 3': loading2Combination,
      'SIMPLE SPAN AB 3': loading2Combination,
      'FIXED SPAN AB 4': loading2Combination,
      'SIMPLE SPAN AB 4': loading2Combination,
      'FIXED SPAN AB 5': loading5Combination,
      'SIMPLE SPAN AB 5': loading5Combination,
      'FIXED SPAN AB 6.1': loading5Combination,
      'SIMPLE SPAN AB 6.1': loading5Combination,
      'FIXED SPAN AB 6.2': loading5Combination,
      'SIMPLE SPAN AB 6.2': loading5Combination,
      'FIXED SPAN AB 7.1': loading7Combination,
      'SIMPLE SPAN AB 7.1': loading7Combination,
      'FIXED SPAN AB 7.2': loading7Combination,
      'SIMPLE SPAN AB 7.2': loading7Combination,
      'FIXED SPAN AB 8': loading7Combination,
      'SIMPLE SPAN AB 8': loading7Combination,
      'FIXED SPAN AB 9': loading7Combination,
      'SIMPLE SPAN AB 9': loading7Combination,
      'FIXED SPAN AB 14.1': loading7Combination,
      'SIMPLE SPAN AB 14.1': loading7Combination,
      'FIXED SPAN AB 14.2': loading7Combination,
      'SIMPLE SPAN AB 14.2': loading7Combination,
      'FIXED SPAN AB 16.1': loading7Combination,
      'SIMPLE SPAN AB 16.1': loading7Combination,
      'FIXED SPAN AB 16.2': loading7Combination,
      'SIMPLE SPAN AB 16.2': loading7Combination,
      'FIXED SPAN AB 10.1': loading5Combination,
      'SIMPLE SPAN AB 10.1': loading5Combination,
      'FIXED SPAN AB 10.2': loading5Combination,
      'SIMPLE SPAN AB 10.2': loading5Combination,
      'FIXED SPAN AB 11': loading5Combination,
      'SIMPLE SPAN AB 11': loading5Combination,
      'FIXED SPAN AB 12': loading5Combination,
      'SIMPLE SPAN AB 12': loading5Combination,
      'FIXED SPAN AB 13.1': loading5Combination,
      'SIMPLE SPAN AB 13.1': loading5Combination,
      'FIXED SPAN AB 13.2': loading5Combination,
      'SIMPLE SPAN AB 13.2': loading5Combination,
      'FIXED SPAN AB 15.1': loading5Combination,
      'SIMPLE SPAN AB 15.1': loading5Combination,
      'FIXED SPAN AB 15.2': loading5Combination,
      'SIMPLE SPAN AB 15.2': loading5Combination,
      'FIXED SPAN AB 17.1': loading17Combination,
      'SIMPLE SPAN AB 17.1': loading17Combination,
      'FIXED SPAN AB 17.2': loading17Combination,
      'SIMPLE SPAN AB 17.2': loading17Combination,
      'FIXED SPAN AB 18': loading18Combination,
      'SIMPLE SPAN AB 18': loading18Combination,
    };

    final Map<String, Widget Function(String)> loadInBCMap = {
      'FIXED SPAN BC 1': loading1Combination,
      'SIMPLE SPAN BC 1': loading1Combination,
      'FIXED SPAN BC 2': loading2Combination,
      'SIMPLE SPAN BC 2': loading2Combination,
      'FIXED SPAN BC 3': loading2Combination,
      'SIMPLE SPAN BC 3': loading2Combination,
      'FIXED SPAN BC 4': loading2Combination,
      'SIMPLE SPAN BC 4': loading2Combination,
      'FIXED SPAN BC 5': loading5Combination,
      'SIMPLE SPAN BC 5': loading5Combination,
      'FIXED SPAN BC 6.1': loading5Combination,
      'SIMPLE SPAN BC 6.1': loading5Combination,
      'FIXED SPAN BC 6.2': loading5Combination,
      'SIMPLE SPAN BC 6.2': loading5Combination,
      'FIXED SPAN BC 7.1': loading7Combination,
      'SIMPLE SPAN BC 7.1': loading7Combination,
      'FIXED SPAN BC 7.2': loading7Combination,
      'SIMPLE SPAN BC 7.2': loading7Combination,
      'FIXED SPAN BC 8': loading7Combination,
      'SIMPLE SPAN BC 8': loading7Combination,
      'FIXED SPAN BC 9': loading7Combination,
      'SIMPLE SPAN BC 9': loading7Combination,
      'FIXED SPAN BC 14.1': loading7Combination,
      'SIMPLE SPAN BC 14.1': loading7Combination,
      'FIXED SPAN BC 14.2': loading7Combination,
      'SIMPLE SPAN BC 14.2': loading7Combination,
      'FIXED SPAN BC 16.1': loading7Combination,
      'SIMPLE SPAN BC 16.1': loading7Combination,
      'FIXED SPAN BC 16.2': loading7Combination,
      'SIMPLE SPAN BC 16.2': loading7Combination,
      'FIXED SPAN BC 10.1': loading5Combination,
      'SIMPLE SPAN BC 10.1': loading5Combination,
      'FIXED SPAN BC 10.2': loading5Combination,
      'SIMPLE SPAN BC 10.2': loading5Combination,
      'FIXED SPAN BC 11': loading5Combination,
      'SIMPLE SPAN BC 11': loading5Combination,
      'FIXED SPAN BC 12': loading5Combination,
      'SIMPLE SPAN BC 12': loading5Combination,
      'FIXED SPAN BC 13.1': loading5Combination,
      'SIMPLE SPAN BC 13.1': loading5Combination,
      'FIXED SPAN BC 13.2': loading5Combination,
      'SIMPLE SPAN BC 13.2': loading5Combination,
      'FIXED SPAN BC 15.1': loading5Combination,
      'SIMPLE SPAN BC 15.1': loading5Combination,
      'FIXED SPAN BC 15.2': loading5Combination,
      'SIMPLE SPAN BC 15.2': loading5Combination,
      'FIXED SPAN BC 17.1': loading17Combination,
      'SIMPLE SPAN BC 17.1': loading17Combination,
      'FIXED SPAN BC 17.2': loading17Combination,
      'SIMPLE SPAN BC 17.2': loading17Combination,
      'FIXED SPAN BC 18': loading18Combination,
      'SIMPLE SPAN BC 18': loading18Combination,
    };

    final Map<String, Widget Function(String)> loadInOverhangCMap = {
      'OVERHANG C 1': loading1Combination,
      'OVERHANG C 2': loading2Combination,
      'OVERHANG C 3': loading2Combination,
      'OVERHANG C 4': loading2Combination,
      'OVERHANG C 5': loading5Combination,
      'OVERHANG C 6.1': loading5Combination,
      'OVERHANG C 6.2': loading5Combination,
      'OVERHANG C 7.1': loading7Combination,
      'OVERHANG C 7.2': loading7Combination,
      'OVERHANG C 8': loading7Combination,
      'OVERHANG C 9': loading7Combination,
      'OVERHANG C 14.1': loading7Combination,
      'OVERHANG C 14.2': loading7Combination,
      'OVERHANG C 16.1': loading7Combination,
      'OVERHANG C 16.2': loading7Combination,
      'OVERHANG C 10.1': loading5Combination,
      'OVERHANG C 10.2': loading5Combination,
      'OVERHANG C 11': loading5Combination,
      'OVERHANG C 12': loading5Combination,
      'OVERHANG C 13.1': loading5Combination,
      'OVERHANG C 13.2': loading5Combination,
      'OVERHANG C 15.1': loading5Combination,
      'OVERHANG C 15.2': loading5Combination,
      'OVERHANG C 17.1': loading17Combination,
      'OVERHANG C 17.2': loading17Combination,
      'OVERHANG C 18': loading18Combination,
    };

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Row(
          children: [
            Text("Data Input"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropdownText(
                    label: 'Moment Unit:',
                    items: momentUnit,
                    initalValue: selectedMomentUnit,
                    onChanged: (selectedItem) {
                      setState(() {
                        selectedMomentUnit = selectedItem!;
                      });
                    },
                  ),
                  if (widget.loadInOverhangAName != '') ...[overhangA()],
                  if (loadInOverhangAMap
                      .containsKey(widget.loadInOverhangAName)) ...[
                    loadInOverhangAMap[widget.loadInOverhangAName]!('OverhangA')
                  ],
                  addVerticalSpace(10),
                  const Divider(),
                  const Text(
                    'Span AB:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(10),
                  if (loadInABMap.containsKey(widget.loadInAB)) ...[
                    loadInABMap[widget.loadInAB]!('AB')
                  ],
                  addVerticalSpace(10),
                  const Divider(),
                  const Text(
                    'Span BC:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(10),
                  if (loadInBCMap.containsKey(widget.loadInBC)) ...[
                    loadInBCMap[widget.loadInBC]!('BC')
                  ],
                  addVerticalSpace(10),
                  if (widget.loadInOverhangCName != '') ...[overhangC()],
                  if (loadInOverhangCMap
                      .containsKey(widget.loadInOverhangCName)) ...[
                    loadInOverhangCMap[widget.loadInOverhangCName]!('OverhangC')
                  ],
                  addVerticalSpace(10)
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          gotoCalculations();
        },
      ),
    );
  }
}
