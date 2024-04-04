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
  String supportA;
  String supportC;
  String loadABPath;
  String loadBCPath;
  String overhangAPath;
  String overhangCPath;

  InputData(
      {super.key,
      required this.loadInAB,
      required this.loadInBC,
      required this.loadInOverhangAName,
      required this.loadInOverhangCName,
      required this.supportA,
      required this.supportC,
      required this.loadABPath,
      required this.loadBCPath,
      required this.overhangAPath,
      required this.overhangCPath});

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
        const Divider(
          color: Colors.blue, // Set the color to blue
          thickness: 3, // Adjust the thickness of the line as needed
        ),
        const Text(
          'Overhang A:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        addVerticalSpace(10),
      ],
    );
  }


  void showToasts(BuildContext context, String e) {
    if (!isToastShowing) {
      final snackBar = SnackBar(
        content: Row(
          children: [
            const Icon(Icons.error, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(child: Text(e)),
          ],
        ),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      isToastShowing = true;

      Future.delayed(const Duration(seconds: 2), () {
        isToastShowing = false;
      });
    }
  }

  Widget overhangC() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Colors.blue, // Set the color to blue
          thickness: 3, // Adjust the thickness of the line as needed
        ),
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
                if (double.parse(value) > double.parse(lengthABValueL)) {
                  showToasts(
                      context, 'Length (a) should be less than Length (L)');
                }
                lengthABValueA = value;
              } else if (type == 'BC') {
                if (double.parse(value) > double.parse(lengthBCValueL)) {
                  showToasts(
                      context, 'Length (a) should be less than Length (L)');
                }
                lengthBCValueA = value;
              } else if (type == 'OverhangA') {
                if (double.parse(value) >
                    double.parse(lengthOverhangABValueL)) {
                  showToasts(
                      context, 'Length (a) should be less than Length (L)');
                }
                lengthOverhangABValueA = value;
              } else if (type == 'OverhangC') {
                if (double.parse(value) >
                    double.parse(lengthOverhangBCValueL)) {
                  showToasts(
                      context, 'Length (a) should be less than Length (L)');
                }
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
                if (num.parse(value) > num.parse(lengthABValueL)) {
                  showToasts(
                      context, 'Length (K) should be less than Length (L)');
                }
                lengthABValueK = value;
              } else if (type == 'BC') {
                if (num.parse(value) > num.parse(lengthBCValueL)) {
                  showToasts(
                      context, 'Length (K) should be less than Length (L)');
                }
                lengthBCValueK = value;
              } else if (type == 'OverhangA') {
                if (num.parse(value) > num.parse(lengthOverhangABValueL)) {
                  showToasts(
                      context, 'Length (K) should be less than Length (L)');
                }
                lengthOverhangABValueK = value;
              } else if (type == 'OverhangC') {
                if (num.parse(value) > num.parse(lengthOverhangBCValueL)) {
                  showToasts(
                      context, 'Length (K) should be less than Length (L)');
                }
                lengthOverhangBCValueK = value;
              }
            });
          },
        ),
      ],
    );
  }

  //Loading 8 Combination
  Widget loading8Combination(String type) {
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
                if ((num.parse(value) * 2) > num.parse(lengthABValueL)) {
                  showToasts(context,
                      'Length (K) times two should be less than Length (L)');
                }
                lengthABValueK = value;
              } else if (type == 'BC') {
                if ((num.parse(value) * 2) > num.parse(lengthBCValueL)) {
                  showToasts(context,
                      'Length (K) times two should be less than Length (L)');
                }
                lengthBCValueK = value;
              } else if (type == 'OverhangA') {
                if ((num.parse(value) * 2) >
                    num.parse(lengthOverhangABValueL)) {
                  showToasts(context,
                      'Length (K) times two should be less than Length (L)');
                }
                lengthOverhangABValueK = value;
              } else if (type == 'OverhangC') {
                if ((num.parse(value) * 2) >
                    num.parse(lengthOverhangBCValueL)) {
                  showToasts(context,
                      'Length (K) times two should be less than Length (L)');
                }
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
                if (num.parse(value) > num.parse(loadABValueW)) {
                  showToasts(
                      context, 'Load (W1) should be less than Load (W2)');
                }
                loadABValueW2 = value;
              } else if (type == 'BC') {
                if (num.parse(value) > num.parse(loadBCValueW)) {
                  showToasts(
                      context, 'Load (W1) should be less than Load (W2)');
                }
                loadBCValueW2 = value;
              } else if (type == 'OverhangA') {
                if (num.parse(value) > num.parse(loadOverhangABValueW)) {
                  showToasts(
                      context, 'Load (W1) should be less than Load (W2)');
                }
                loadOverhangABValueW2 = value;
              } else if (type == 'OverhangC') {
                if (num.parse(value) > num.parse(loadOverhangBCValueW)) {
                  showToasts(
                      context, 'Load (W1) should be less than Load (W2)');
                }
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
                if (num.parse(value) > num.parse(lengthABValueL)) {
                  showToasts(
                      context, 'Length (K1) should be less than Length (L)');
                }
                lengthABValueK1 = value;
              } else if (type == 'BC') {
                if (num.parse(value) > num.parse(lengthBCValueL)) {
                  showToasts(
                      context, 'Length (K1) should be less than Length (L)');
                }
                lengthBCValueK1 = value;
              } else if (type == 'OverhangA') {
                if (num.parse(value) > num.parse(lengthOverhangABValueL)) {
                  showToasts(
                      context, 'Length (K1) should be less than Length (L)');
                }
                lengthOverhangABValueK1 = value;
              } else if (type == 'OverhangC') {
                if (num.parse(value) > num.parse(lengthOverhangBCValueL)) {
                  showToasts(
                      context, 'Length (K1) should be less than Length (L)');
                }
                lengthOverhangBCValueK1 = value;
              }
            });
          },
        ),
      ],
    );
  }

  Calculation loadingHeader() {
    return Calculation(
      //Names of the load
      loadInAB: widget.loadInAB,
      loadInBC: widget.loadInBC,
      loadInOverhangAName: widget.loadInOverhangAName,
      loadInOverhangCName: widget.loadInOverhangCName,

      //Moment Unit
      selectedMomentUnit: selectedMomentUnit,
    );
  }

  Calculation loading1CalculationAB() {
    return Calculation(
      //Span AB
      loadABValueP: loadABValueP,
      lengthABValueL: lengthABValueL,
      lengthABValueA: lengthABValueA,
    );
  }

  Calculation loading1CalculationBC() {
    return Calculation(
      //Span BC
      loadBCValueP: loadBCValueP,
      lengthBCValueL: lengthBCValueL,
      lengthBCValueA: lengthBCValueA,
    );
  }

  Calculation loading2CalculationAB() {
    return Calculation(
      //Span AB
      loadABValueP: loadABValueP,
      lengthABValueL: lengthABValueL,
    );
  }

  Calculation loading2CalculationBC() {
    return Calculation(
      //Span BC
      loadBCValueP: loadBCValueP,
      lengthBCValueL: lengthBCValueL,
    );
  }

  Calculation loading5CalculationAB() {
    return Calculation(
      //Span AB
      loadABValueW: loadABValueW,
      lengthABValueL: lengthABValueL,
    );
  }

  Calculation loading5CalculationBC() {
    return Calculation(
      //Span BC
      loadBCValueW: loadBCValueW,
      lengthBCValueL: lengthBCValueL,
    );
  }

  Calculation loading7CalculationAB() {
    return Calculation(
      //Span AB
      loadABValueW: loadABValueW,
      lengthABValueL: lengthABValueL,
      lengthABValueK: lengthABValueK,
    );
  }

  Calculation loading7CalculationBC() {
    return Calculation(
      //Span BC
      loadBCValueW: loadBCValueW,
      lengthBCValueL: lengthBCValueL,
      lengthBCValueK: lengthBCValueK,
    );
  }

  Calculation loading17CalculationAB() {
    return Calculation(
      //Span AB
      loadABValueW: loadABValueW,
      loadABValueW2: loadABValueW2,
      lengthABValueL: lengthABValueL,
    );
  }

  Calculation loading17CalculationBC() {
    return Calculation(
      //Span BC
      loadBCValueW: loadBCValueW,
      loadBCValueW2: loadABValueW2,
      lengthBCValueL: lengthBCValueL,
    );
  }

  Calculation loading18CalculationAB() {
    return Calculation(
      //Span AB
      momentABValue: momentABValue,
      lengthABValueL: lengthABValueL,
      lengthABValueK: lengthABValueK,
    );
  }

  Calculation loading18CalculationBC() {
    return Calculation(
      //Span BC
      momentBCValue: momentBCValue,
      lengthBCValueL: lengthBCValueL,
      lengthBCValueK: lengthBCValueK,
    );
  }

  Calculation combinedCalculationPLA(
      Calculation header, Calculation calc1, Calculation calc2) {
    return Calculation(
      loadInAB: header.loadInAB,
      loadInBC: header.loadInBC,
      loadInOverhangAName: header.loadInOverhangAName,
      loadInOverhangCName: header.loadInOverhangCName,
      selectedMomentUnit: header.selectedMomentUnit,
      loadABValueP: calc1.loadABValueP,
      lengthABValueL: calc1.lengthABValueL,
      lengthABValueA: calc1.lengthABValueA,
      loadBCValueP: calc2.loadBCValueP,
      lengthBCValueL: calc2.lengthBCValueL,
      lengthBCValueA: calc2.lengthBCValueA,
    );
  }

  Calculation? getLoadingCalculation(String combination, Span span) {
    if (combination == 'AB') {
      Loading? loading = aBCombination[span];
      switch (loading) {
        case Loading.loading1Combination:
          return loading1CalculationAB();
        case Loading.loading2Combination:
          return loading2CalculationAB();
        case Loading.loading5Combination:
          return loading5CalculationAB();
        case Loading.loading7Combination:
          return loading7CalculationAB();
        case Loading.loading17Combination:
          return loading17CalculationAB();
        case Loading.loading18Combination:
          return loading18CalculationAB();
        default:
          throw Exception('Invalid combination');
      }
    } else if (combination == 'BC') {
      Loading? loading = bCCombination[span];
      switch (loading) {
        case Loading.loading1Combination:
          return loading1CalculationBC();
        case Loading.loading2Combination:
          return loading2CalculationBC();
        case Loading.loading5Combination:
          return loading5CalculationBC();
        case Loading.loading7Combination:
          return loading7CalculationBC();
        case Loading.loading17Combination:
          return loading17CalculationBC();
        case Loading.loading18Combination:
          return loading18CalculationBC();
        default:
          throw Exception('Invalid combination');
      }
    }
    return null;
  }

  void gotoCalculationsTwoCombination() {
    Span spanAb = getSpanFromString(widget.loadInAB);
    Span spanBc = getSpanFromString(widget.loadInBC);
    Calculation header = loadingHeader();
    Calculation? calculation1 = getLoadingCalculation('AB', spanAb);
    Calculation? calculation2 = getLoadingCalculation('BC', spanBc);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            combinedCalculationPLA(header, calculation1!, calculation2!),
      ),
    );
  }

  void gotoCalculationsFourCombination() {
    Map<String, Function> combinations = {
      //Combination 1
      'FIXED SPAN AB 1FIXED SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1CalculationAB,
      'SIMPLE SPAN AB 1SIMPLE SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1CalculationAB,
      'SIMPLE SPAN AB 1FIXED SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1CalculationAB,
      'FIXED SPAN AB 1SIMPLE SPAN BC 1OVERHANG C 1OVERHANG D 1':
          loading1CalculationAB,
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

  void gotoCalculationsSkip() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Calculation(
          loadInAB: widget.loadInAB,
          loadInBC: widget.loadInBC,
          loadInOverhangAName: widget.loadInOverhangAName,
          loadInOverhangCName: widget.loadInOverhangCName,
          selectedMomentUnit: selectedMomentUnit,
          overhangAValue: overhangAValue,
          selectedOverhangAUnit: selectedOverhangAUnit,
          overhangCValue: overhangCValue,
          selectedOverhangCUnit: selectedOverhangCUnit,
          loadOverhangABValueP: loadOverhangABValueP,
          selectedLoadOverhangABUnitP: selectedLoadOverhangABUnitP,
          loadOverhangABValueW: loadOverhangABValueW,
          selectedLoadOverhangABUnitW: selectedLoadOverhangABUnitW,
          loadOverhangABValueW2: loadOverhangABValueW2,
          selectedLoadOverhangABUnitW2: selectedLoadOverhangABUnitW2,
          lengthOverhangABValueL: lengthOverhangABValueL,
          selectedLengthOverhangABUnitL: selectedLengthOverhangABUnitL,
          lengthOverhangABValueA: lengthOverhangABValueA,
          selectedLengthOverhangABUnitA: selectedLengthOverhangABUnitA,
          lengthOverhangABValueK: lengthOverhangABValueK,
          selectedLengthOverhangABUnitK: selectedLengthOverhangABUnitK,
          lengthOverhangABValueK1: lengthOverhangABValueK1,
          selectedLengthOverhangABUnitK1: selectedLengthOverhangABUnitK1,
          momentOverhangABValue: momentOverhangAValue,
          selectedMomentOverhangABUnit: selectedMomentOverhangAUnit,
          loadABValueP: loadABValueP,
          selectedLoadABUnitP: selectedLoadABUnitP,
          loadABValueW: loadABValueW,
          selectedLoadABUnitW: selectedLoadABUnitW,
          loadABValueW2: loadABValueW2,
          selectedLoadABUnitW2: selectedLoadABUnitW2,
          lengthABValueL: lengthABValueL,
          selectedLengthABUnitL: selectedLengthABUnitL,
          lengthABValueA: lengthABValueA,
          selectedLengthABUnitA: selectedLengthABUnitA,
          lengthABValueK: lengthABValueK,
          selectedLengthABUnitK: selectedLengthABUnitK,
          lengthABValueK1: lengthABValueK1,
          selectedLengthABUnitK1: selectedLengthABUnitK1,
          momentABValue: momentABValue,
          selectedMomentABUnit: selectedMomentABUnit,
          loadBCValueP: loadBCValueP,
          selectedLoadBCUnitP: selectedLoadBCUnitP,
          loadBCValueW: loadBCValueW,
          selectedLoadBCUnitW: selectedLoadBCUnitW,
          loadBCValueW2: loadBCValueW2,
          selectedLoadBCUnitW2: selectedLoadBCUnitW2,
          lengthBCValueL: lengthBCValueL,
          selectedLengthBCUnitL: selectedLengthBCUnitL,
          lengthBCValueA: lengthBCValueA,
          selectedLengthBCUnitA: selectedLengthBCUnitA,
          lengthBCValueK: lengthBCValueK,
          selectedLengthBCUnitK: selectedLengthBCUnitK,
          lengthBCValueK1: lengthBCValueK1,
          selectedLengthBCUnitK1: selectedLengthBCUnitK1,
          momentBCValue: momentBCValue,
          selectedMomentBCUnit: selectedMomentBCUnit,
          loadOverhangBCValueP: loadOverhangBCValueP,
          selectedLoadOverhangBCUnitP: selectedLoadOverhangBCUnitP,
          loadOverhangBCValueW: loadOverhangBCValueW,
          selectedLoadOverhangBCUnitW: selectedLoadOverhangBCUnitW,
          loadOverhangBCValueW2: loadOverhangBCValueW2,
          selectedLoadOverhangBCUnitW2: selectedLoadOverhangBCUnitW2,
          lengthOverhangBCValueL: lengthOverhangBCValueL,
          selectedLengthOverhangBCUnitL: selectedLengthOverhangBCUnitL,
          lengthOverhangBCValueA: lengthOverhangBCValueA,
          selectedLengthOverhangBCUnitA: selectedLengthOverhangBCUnitA,
          lengthOverhangBCValueK: lengthOverhangBCValueK,
          selectedLengthOverhangBCUnitK: selectedLengthOverhangBCUnitK,
          lengthOverhangBCValueK1: lengthOverhangBCValueK1,
          selectedLengthOverhangBCUnitK1: selectedLengthOverhangBCUnitK1,
          momentOverhangBCValue: momentOverhangCValue,
          selectedMomentOverhangBCUnit: selectedMomentOverhangCUnit,
        ),
      ),
    );
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
      'OVERHANG A 8': loading8Combination,
      'OVERHANG A 9': loading8Combination,
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
      'FIXED SPAN AB 8': loading8Combination,
      'SIMPLE SPAN AB 8': loading8Combination,
      'FIXED SPAN AB 9': loading8Combination,
      'SIMPLE SPAN AB 9': loading8Combination,
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
      'FIXED SPAN BC 8': loading8Combination,
      'SIMPLE SPAN BC 8': loading8Combination,
      'FIXED SPAN BC 9': loading8Combination,
      'SIMPLE SPAN BC 9': loading8Combination,
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
      'OVERHANG C 8': loading8Combination,
      'OVERHANG C 9': loading8Combination,
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

    try {
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Text('Free body diagram of the structure',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            //Two image Free body diagram
                            (widget.supportA == 'Fixed Support' &&
                                        widget.supportC == 'Fixed Support' ||
                                    widget.supportA == 'Simple Support' &&
                                        widget.supportC == 'Simple Support' ||
                                    widget.supportA == 'Fixed Support' &&
                                        widget.supportC == 'Simple Support' ||
                                    widget.supportA == 'Simple Support' &&
                                        widget.supportC == 'Fixed Support')
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        widget.loadABPath,
                                        width: 160,
                                        height: 160,
                                      ),
                                      Image.asset(
                                        widget.loadBCPath,
                                        width: 160,
                                        height: 160,
                                      ),
                                    ],
                                  )
                                : Container(),
                            //Three image free body diagram awith Overhang C
                            (widget.supportA == 'Fixed Support' &&
                                        widget.supportC ==
                                            'Simple Support with Overhang' ||
                                    widget.supportA == 'Simple Support' &&
                                        widget.supportC ==
                                            'Simple Support with Overhang')
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        widget.loadABPath,
                                        width: 110,
                                        height: 110,
                                      ),
                                      Image.asset(
                                        widget.loadBCPath,
                                        width: 110,
                                        height: 110,
                                      ),
                                      Image.asset(
                                        widget.overhangCPath,
                                        width: 110,
                                        height: 110,
                                      ),
                                    ],
                                  )
                                : Container(),
                            //Three image free body diagram awith Overhang A
                            (widget.supportA ==
                                            'Simple Support with Overhang' &&
                                        widget.supportC == 'Simple Support' ||
                                    widget.supportA ==
                                            'Simple Support with Overhang' &&
                                        widget.supportC == 'Fixed Support')
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        widget.overhangAPath,
                                        width: 110,
                                        height: 110,
                                      ),
                                      Image.asset(
                                        widget.loadABPath,
                                        width: 110,
                                        height: 110,
                                      ),
                                      Image.asset(
                                        widget.loadBCPath,
                                        width: 110,
                                        height: 110,
                                      ),
                                    ],
                                  )
                                : Container(),
                            //Three image free body diagram awith Overhang A and C
                            (widget.supportA ==
                                        'Simple Support with Overhang' &&
                                    widget.supportC ==
                                        'Simple Support with Overhang')
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        widget.overhangAPath,
                                        width: 85,
                                        height: 85,
                                      ),
                                      Image.asset(
                                        widget.loadABPath,
                                        width: 85,
                                        height: 85,
                                      ),
                                      Image.asset(
                                        widget.loadBCPath,
                                        width: 85,
                                        height: 85,
                                      ),
                                      Image.asset(
                                        widget.overhangCPath,
                                        width: 85,
                                        height: 85,
                                      ),
                                    ],
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.blue, // Set the color to blue
                      thickness:
                          3, // Adjust the thickness of the line as needed
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
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
                          loadInOverhangAMap[widget.loadInOverhangAName]!(
                              'OverhangA')
                        ],
                        addVerticalSpace(10),
                        const Divider(
                          color: Colors.blue, // Set the color to blue
                          thickness:
                              3, // Adjust the thickness of the line as needed
                        ),
                        const Text(
                          'Span AB:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        addVerticalSpace(10),
                        if (loadInABMap.containsKey(widget.loadInAB)) ...[
                          loadInABMap[widget.loadInAB]!('AB')
                        ],
                        addVerticalSpace(10),
                        const Divider(
                          color: Colors.blue, // Set the color to blue
                          thickness:
                              3, // Adjust the thickness of the line as needed
                        ),
                        const Text(
                          'Span BC:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        addVerticalSpace(10),
                        if (loadInBCMap.containsKey(widget.loadInBC)) ...[
                          loadInBCMap[widget.loadInBC]!('BC')
                        ],
                        addVerticalSpace(10),
                        if (widget.loadInOverhangCName != '') ...[overhangC()],
                        if (loadInOverhangCMap
                            .containsKey(widget.loadInOverhangCName)) ...[
                          loadInOverhangCMap[widget.loadInOverhangCName]!(
                              'OverhangC')
                        ],
                        addVerticalSpace(10)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: CustomFloatingActionButton(
          onPressed: () {
            gotoCalculationsSkip();
          },
        ),
      );
    } catch (error) {
      return Container(); // Return a fallback widget
    }
  }
}
