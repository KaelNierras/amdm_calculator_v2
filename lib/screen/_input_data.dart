// ignore_for_file: library_private_types_in_public_api

import 'package:amdm_calculator/widgets/custom_textfield_with_drop.dart';
import 'package:flutter/material.dart';
import '../utils/helper_widget.dart';
import '../widgets/custom_dropdown_text.dart';
import '../widgets/custom_floating_action_button.dart';
import '_calculation.dart';

class InputData extends StatefulWidget {
  final String loadInAB;
  final String loadInBC;
  final String loadInOverhangAName;
  final String loadInOverhangCName;

  const InputData(
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

  //Moment Unit Variable
  String selectedMomentUnit = '';

  //Unit List
  List<String> momentUnit = ['kN.m', 'lb.ft'];
  List<String> loadUnit = ['kN', 'lb.'];
  List<String> lengthUnit = ['m', 'ft.'];

  //Overhang Variable
  String overhangAValue = '';
  String selectedOverhangAUnit = '';

  String overhangCValue = '';
  String selectedOverhangCUnit = '';

  //Overhang A AB Load Variable

  //Load P AB Load Variable
  String loadOverhangABValueP = '';
  String selectedLoadOverhangABUnitP = '';

  //Load W AB Load Variable
  String loadOverhangABValueW = '';
  String selectedLoadOverhangABUnitW = '';

  //Load W2 AB Load Variable
  String loadOverhangABValueW2 = '';
  String selectedLoadOverhangABUnitW2 = '';

  //Length L AB Load Variable
  String lengthOverhangABValueL = '';
  String selectedLengthOverhangABUnitL = '';

  //Length A AB Load Variable
  String lengthOverhangABValueA = '';
  String selectedLengthOverhangABUnitA = '';

  //Length K AB Load Variable
  String lengthOverhangABValueK = '';
  String selectedLengthOverhangABUnitK = '';

  //Length K1 AB Load Variable
  String lengthOverhangABValueK1 = '';
  String selectedLengthOverhangABUnitK1 = '';

  //Moment AB Load Variable
  String momentOverhangAValue = '';
  String selectedMomentOverhangAUnit = '';

  //AB Load Variable

  //Load P AB Load Variable
  String loadABValueP = '';
  String selectedLoadABUnitP = '';

  //Load W AB Load Variable
  String loadABValueW = '';
  String selectedLoadABUnitW = '';

  //Load W2 AB Load Variable
  String loadABValueW2 = '';
  String selectedLoadABUnitW2 = '';

  //Length L AB Load Variable
  String lengthABValueL = '';
  String selectedLengthABUnitL = '';

  //Length A AB Load Variable
  String lengthABValueA = '';
  String selectedLengthABUnitA = '';

  //Length K AB Load Variable
  String lengthABValueK = '';
  String selectedLengthABUnitK = '';

  //Length K1 AB Load Variable
  String lengthABValueK1 = '';
  String selectedLengthABUnitK1 = '';

  //Moment AB Load Variable
  String momentABValue = '';
  String selectedMomentABUnit = '';

  //BC Load Variable

  //Load P BC Load Variable
  String loadBCValueP = '';
  String selectedLoadBCUnitP = '';

  //Load W BC Load Variable
  String loadBCValueW = '';
  String selectedLoadBCUnitW = '';

  //Load W BC Load Variable
  String loadBCValueW2 = '';
  String selectedLoadBCUnitW2 = '';

  //Length L BC Load Variable
  String lengthBCValueL = '';
  String selectedLengthBCUnitL = '';

  //Length A BC Load Variable
  String lengthBCValueA = '';
  String selectedLengthBCUnitA = '';

  //Length K BC Load Variable
  String lengthBCValueK = '';
  String selectedLengthBCUnitK = '';

  //Length K1 AB Load Variable
  String lengthBCValueK1 = '';
  String selectedLengthBCUnitK1 = '';

  //Moment BC Load Variable
  String momentBCValue = '';
  String selectedMomentBCUnit = '';

  //Overhang A BC Load Variable

  //Load P BC Load Variable
  String loadOverhangBCValueP = '';
  String selectedLoadOverhangBCUnitP = '';

  //Load W BC Load Variable
  String loadOverhangBCValueW = '';
  String selectedLoadOverhangBCUnitW = '';

  //Load W2 BC Load Variable
  String loadOverhangBCValueW2 = '';
  String selectedLoadOverhangBCUnitW2 = '';

  //Length L BC Load Variable
  String lengthOverhangBCValueL = '';
  String selectedLengthOverhangBCUnitL = '';

  //Length A BC Load Variable
  String lengthOverhangBCValueA = '';
  String selectedLengthOverhangBCUnitA = '';

  //Length K BC Load Variable
  String lengthOverhangBCValueK = '';
  String selectedLengthOverhangBCUnitK = '';

  //Length K1 BC Load Variable
  String lengthOverhangBCValueK1 = '';
  String selectedLengthOverhangBCUnitK1 = '';

  //Moment BC Load Variable
  String momentOverhangCValue = '';
  String selectedMomentOverhangCUnit = '';

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
      loadInBC: widget.loadInAB,
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

  void gotoCalculations() {
    Map<String, Function> combinations = {
      'FIXED SPAN AB 1FIXED SPAN BC 1': loading1Calculation,
      'SIMPLE SPAN AB 1SIMPLE SPAN BC 1': loading1Calculation,
      'SIMPLE SPAN AB 1FIXED SPAN BC 1': loading1Calculation,
      'FIXED SPAN AB 1SIMPLE SPAN BC 1': loading1Calculation,
      // Add more combinations here
    };

    String currentCombination = widget.loadInAB + widget.loadInBC;

    if (combinations.containsKey(currentCombination)) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => combinations[currentCombination]!(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  if (widget.loadInOverhangAName == 'OVERHANG A 1') ...[
                    loading1Combination('OverhangA')
                  ],
                  if (widget.loadInOverhangAName == 'OVERHANG A 2' ||
                      widget.loadInOverhangAName == 'OVERHANG A 3' ||
                      widget.loadInOverhangAName == 'OVERHANG A 4') ...[
                    loading2Combination('OverhangA')
                  ],
                  if (widget.loadInOverhangAName == 'OVERHANG A 5' ||
                      widget.loadInOverhangAName == 'OVERHANG A 6.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 6.2') ...[
                    loading5Combination('OverhangA')
                  ],
                  if (widget.loadInOverhangAName == 'OVERHANG A 7.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 7.2' ||
                      widget.loadInOverhangAName == 'OVERHANG A 8' ||
                      widget.loadInOverhangAName == 'OVERHANG A 9' ||
                      widget.loadInOverhangAName == 'OVERHANG A 14.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 14.2' ||
                      widget.loadInOverhangAName == 'OVERHANG A 16.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 16.2') ...[
                    loading7Combination('OverhangA')
                  ],
                  if (widget.loadInOverhangAName == 'OVERHANG A 10.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 10.2' ||
                      widget.loadInOverhangAName == 'OVERHANG A 11' ||
                      widget.loadInOverhangAName == 'OVERHANG A 12' ||
                      widget.loadInOverhangAName == 'OVERHANG A 13.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 13.2' ||
                      widget.loadInOverhangAName == 'OVERHANG A 15.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 15.2') ...[
                    loading5Combination('OverhangA')
                  ],
                  if (widget.loadInOverhangAName == 'OVERHANG A 17.1' ||
                      widget.loadInOverhangAName == 'OVERHANG A 17.2') ...[
                    loading17Combination('OverhangA')
                  ],
                  if (widget.loadInOverhangAName == 'OVERHANG A 18' ||
                      widget.loadInOverhangAName == 'OVERHANG A 18') ...[
                    loading18Combination('OverhangA')
                  ],
                  addVerticalSpace(10),
                  const Divider(),
                  const Text(
                    'Span AB:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(10),
                  if (widget.loadInAB == 'FIXED SPAN AB 1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 1') ...[
                    loading1Combination('AB')
                  ],
                  if (widget.loadInAB == 'FIXED SPAN AB 2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 2' ||
                      widget.loadInAB == 'FIXED SPAN AB 3' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 3' ||
                      widget.loadInAB == 'FIXED SPAN AB 4' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 4') ...[
                    loading2Combination('AB')
                  ],
                  if (widget.loadInAB == 'FIXED SPAN AB 5' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 5' ||
                      widget.loadInAB == 'FIXED SPAN AB 6.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 6.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 6.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 6.2') ...[
                    loading5Combination('AB')
                  ],
                  if (widget.loadInAB == 'FIXED SPAN AB 7.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 7.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 7.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 7.2' ||
                      widget.loadInAB == 'FIXED SPAN AB 8' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 8' ||
                      widget.loadInAB == 'FIXED SPAN AB 9' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 9' ||
                      widget.loadInAB == 'FIXED SPAN AB 14.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 14.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 14.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 14.2' ||
                      widget.loadInAB == 'FIXED SPAN AB 16.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 16.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 16.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 16.2') ...[
                    loading7Combination('AB')
                  ],
                  if (widget.loadInAB == 'FIXED SPAN AB 10.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 10.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 10.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 10.2' ||
                      widget.loadInAB == 'FIXED SPAN AB 11' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 11' ||
                      widget.loadInAB == 'FIXED SPAN AB 12' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 12' ||
                      widget.loadInAB == 'FIXED SPAN AB 13.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 13.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 13.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 13.2' ||
                      widget.loadInAB == 'FIXED SPAN AB 15.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 15.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 15.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 15.2') ...[
                    loading5Combination('AB')
                  ],
                  if (widget.loadInAB == 'FIXED SPAN AB 17.1' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 17.1' ||
                      widget.loadInAB == 'FIXED SPAN AB 17.2' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 17.2') ...[
                    loading17Combination('AB')
                  ],
                  if (widget.loadInAB == 'FIXED SPAN AB 18' ||
                      widget.loadInAB == 'SIMPLE SPAN AB 18') ...[
                    loading18Combination('AB')
                  ],
                  addVerticalSpace(10),
                  const Divider(),
                  const Text(
                    'Span BC:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(10),
                  if (widget.loadInBC == 'FIXED SPAN BC 1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 1') ...[
                    loading1Combination('BC')
                  ],
                  if (widget.loadInBC == 'FIXED SPAN BC 2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 2' ||
                      widget.loadInBC == 'FIXED SPAN BC 3' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 3' ||
                      widget.loadInBC == 'FIXED SPAN BC 4' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 4') ...[
                    loading2Combination('BC')
                  ],
                  if (widget.loadInBC == 'FIXED SPAN BC 5' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 5' ||
                      widget.loadInBC == 'FIXED SPAN BC 6.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 6.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 6.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 6.2') ...[
                    loading5Combination('BC')
                  ],
                  if (widget.loadInBC == 'FIXED SPAN BC 7.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 7.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 7.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 7.2' ||
                      widget.loadInBC == 'FIXED SPAN BC 8' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 8' ||
                      widget.loadInBC == 'FIXED SPAN BC 9' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 9' ||
                      widget.loadInBC == 'FIXED SPAN BC 14.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 14.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 14.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 14.2' ||
                      widget.loadInBC == 'FIXED SPAN BC 16.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 16.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 16.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 16.2') ...[
                    loading7Combination('BC')
                  ],
                  if (widget.loadInBC == 'FIXED SPAN BC 10.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 10.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 10.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 10.2' ||
                      widget.loadInBC == 'FIXED SPAN BC 11' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 11' ||
                      widget.loadInBC == 'FIXED SPAN BC 12' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 12' ||
                      widget.loadInBC == 'FIXED SPAN BC 13.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 13.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 13.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 13.2' ||
                      widget.loadInBC == 'FIXED SPAN BC 15.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 15.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 15.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 15.2') ...[
                    loading5Combination('BC')
                  ],
                  if (widget.loadInBC == 'FIXED SPAN BC 17.1' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 17.1' ||
                      widget.loadInBC == 'FIXED SPAN BC 17.2' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 17.2') ...[
                    loading17Combination('BC')
                  ],
                  if (widget.loadInBC == 'FIXED SPAN BC 18' ||
                      widget.loadInBC == 'SIMPLE SPAN BC 18') ...[
                    loading18Combination('BC')
                  ],
                  if (widget.loadInOverhangCName != '') ...[overhangC()],
                  if (widget.loadInOverhangCName == 'OVERHANG C 1') ...[
                    loading1Combination('OverhangC')
                  ],
                  if (widget.loadInOverhangCName == 'OVERHANG C 2' ||
                      widget.loadInOverhangCName == 'OVERHANG C 3' ||
                      widget.loadInOverhangCName == 'OVERHANG C 4') ...[
                    loading2Combination('OverhangC')
                  ],
                  if (widget.loadInOverhangCName == 'OVERHANG C 5' ||
                      widget.loadInOverhangCName == 'OVERHANG C 6.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 6.2') ...[
                    loading5Combination('OverhangC')
                  ],
                  if (widget.loadInOverhangCName == 'OVERHANG C 7.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 7.2' ||
                      widget.loadInOverhangCName == 'OVERHANG C 8' ||
                      widget.loadInOverhangCName == 'OVERHANG C 9' ||
                      widget.loadInOverhangCName == 'OVERHANG C 14.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 14.2' ||
                      widget.loadInOverhangCName == 'OVERHANG C 16.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 16.2') ...[
                    loading7Combination('OverhangC')
                  ],
                  if (widget.loadInOverhangCName == 'OVERHANG C 10.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 10.2' ||
                      widget.loadInOverhangCName == 'OVERHANG C 11' ||
                      widget.loadInOverhangCName == 'OVERHANG C 12' ||
                      widget.loadInOverhangCName == 'OVERHANG C 13.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 13.2' ||
                      widget.loadInOverhangCName == 'OVERHANG C 15.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 15.2') ...[
                    loading5Combination('OverhangC')
                  ],
                  if (widget.loadInOverhangCName == 'OVERHANG C 17.1' ||
                      widget.loadInOverhangCName == 'OVERHANG C 17.2') ...[
                    loading17Combination('OverhangC')
                  ],
                  if (widget.loadInOverhangCName == 'OVERHANG C 18' ||
                      widget.loadInOverhangCName == 'OVERHANG C 18') ...[
                    loading18Combination('OverhangC')
                  ],
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
