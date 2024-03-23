// ignore_for_file: library_private_types_in_public_api

import 'package:amdm_calculator/widgets/custom_textfield_with_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../utils/helper_widget.dart';
import '../widgets/custom_dropdown_text.dart';

class InputData extends StatefulWidget {

  final String loadInAB;
  final String loadInBC;

  const InputData({super.key, required this.loadInAB, required this.loadInBC});

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  @override
  initState() {
    super.initState();
    initialization();
    selectedMomentUnit = momentUnit.first;
  }


  //Splash Screen Initialization
  void initialization() async {
    FlutterNativeSplash.remove();
  }

  //Moment Unit Variable
  String selectedMomentUnit = '';

  //Unit List
  List<String> momentUnit = ['kN.m', 'lb.ft'];
  List<String> loadUnit = ['kN', 'lb.'];
  List<String> lengthUnit = ['m', 'ft.'];

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


  Widget loading1Combination(selectedLoadUnitP, loadValueP,selectedLengthUnitL, lengthValueL, selectedLengthUnitA, lengthValueA){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Load (P)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitP = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueP = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueL = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (a)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitA = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueA = value;
            });
          },
        ),
      ],
    );
  }

  Widget loading2Combination(selectedLoadUnitP, loadValueP,selectedLengthUnitL, lengthValueL){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Load (P)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitP = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueP = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueL = value;
            });
          },
        ),
      ],
    );
  }

  Widget loading5Combination(selectedLoadUnitW, loadValueW,selectedLengthUnitL, lengthValueL){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Load (W)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitW = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueW = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueL = value;
            });
          },
        ),
      ],
    );
  }

  Widget loading7Combination(selectedLoadUnitW, loadValueW,selectedLengthUnitL, lengthValueL, selectedLengthUnitK, lengthValueK){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Load (W)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitW = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueW = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueL = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (K)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitK = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueK = value;
            });
          },
        ),
      ],
    );
  }

  Widget loading10Combination(selectedLoadUnitW, loadValueW,selectedLengthUnitL, lengthValueL){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Load (W)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitW = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueW = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueL = value;
            });
          },
        ),
      ],
    );
  }

  Widget loading17Combination(selectedLoadUnitW, loadValueW,selectedLoadUnitW2, loadValueW2, selectedLengthUnitL, lengthValueL){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Load (W1)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitW = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueW = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Load (W2)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitW2 = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueW2 = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (L)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueL = value;
            });
          },
        ),
      ],
    );
  }

  Widget loading18Combination(selectedMomentUnit, momentValue, selectedLoadUnitL, loadValueL, selectedLengthUnitK1, lengthValueK1){
    return Column(
      children: [
        CustomTextfieldWithDropdown(
          label: 'Enter Moment (M)',
          items: momentUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedMomentUnit = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              momentValue = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Load (L)',
          items: loadUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLoadUnitL = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              loadValueL = value;
            });
          },
        ),
        addVerticalSpace(10),
        CustomTextfieldWithDropdown(
          label: 'Enter Length (K1)',
          items: lengthUnit,
          onChanged: (selectedItem) {
            setState(() {
              selectedLengthUnitK1 = selectedItem!;
            });
          }, onTextChanged: (String value) { 
            setState(() {
              lengthValueK1 = value;
            });
          },
        ),
      ],
    );
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
        body: Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropdownText(
                    label: 'Moment Unit',
                    items: momentUnit,
                    initalValue: selectedMomentUnit,
                    onChanged: (selectedItem) {
                      setState(() {
                        selectedMomentUnit = selectedItem!;
                      });
                    },
                  ),
                  const Divider(),
                  const Text(
                    'Span AB:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(10),
                  
                  if (widget.loadInAB == 'FIXED SPAN AB 1' || widget.loadInAB == 'SIMPLE SPAN AB 1') 
                  ...[loading1Combination(selectedLoadABUnitP, loadABValueP, selectedLengthABUnitL, lengthABValueL, selectedLengthABUnitA, lengthABValueA)],
                  
                  if (widget.loadInAB == 'FIXED SPAN AB 2' || widget.loadInAB == 'SIMPLE SPAN AB 2' || widget.loadInAB == 'FIXED SPAN AB 3' || widget.loadInAB == 'SIMPLE SPAN AB 3' || widget.loadInAB == 'FIXED SPAN AB 4' || widget.loadInAB == 'SIMPLE SPAN AB 4') 
                  ...[loading2Combination(selectedLoadABUnitP, loadABValueP,selectedLengthABUnitL, lengthABValueL)],

                  if (widget.loadInAB == 'FIXED SPAN AB 5' || widget.loadInAB == 'SIMPLE SPAN AB 5' || widget.loadInAB == 'FIXED SPAN AB 6.1' || widget.loadInAB == 'SIMPLE SPAN AB 6.1' || widget.loadInAB == 'FIXED SPAN AB 6.2' || widget.loadInAB == 'SIMPLE SPAN AB 6.2') 
                  ...[loading5Combination(selectedLoadABUnitW, loadABValueW,selectedLengthABUnitL, lengthABValueL)],

                  if (widget.loadInAB == 'FIXED SPAN AB 7.1' || widget.loadInAB == 'SIMPLE SPAN AB 7.1' || widget.loadInAB == 'FIXED SPAN AB 7.2' || widget.loadInAB == 'SIMPLE SPAN AB 7.2' || widget.loadInAB == 'FIXED SPAN AB 8' || widget.loadInAB == 'SIMPLE SPAN AB 8' || widget.loadInAB == 'FIXED SPAN AB 9' || widget.loadInAB == 'SIMPLE SPAN AB 9' || widget.loadInAB == 'FIXED SPAN AB 14.1' || widget.loadInAB == 'SIMPLE SPAN AB 14.1' || widget.loadInAB == 'FIXED SPAN AB 14.2' || widget.loadInAB == 'SIMPLE SPAN AB 14.2' || widget.loadInAB == 'FIXED SPAN AB 16.1' || widget.loadInAB == 'SIMPLE SPAN AB 16.1' || widget.loadInAB == 'FIXED SPAN AB 16.2' || widget.loadInAB == 'SIMPLE SPAN AB 16.2') 
                  ...[loading7Combination(selectedLoadABUnitW, loadABValueW,selectedLengthABUnitL, lengthABValueL, selectedLengthABUnitK, lengthABValueK)],
                  
                  if (widget.loadInAB == 'FIXED SPAN AB 10.1' || widget.loadInAB == 'SIMPLE SPAN AB 10.1' || widget.loadInAB == 'FIXED SPAN AB 10.2' || widget.loadInAB == 'SIMPLE SPAN AB 10.2' || widget.loadInAB == 'FIXED SPAN AB 11' || widget.loadInAB == 'SIMPLE SPAN AB 11' || widget.loadInAB == 'FIXED SPAN AB 12' || widget.loadInAB == 'SIMPLE SPAN AB 12' || widget.loadInAB == 'FIXED SPAN AB 13.1' || widget.loadInAB == 'SIMPLE SPAN AB 13.1' || widget.loadInAB == 'FIXED SPAN AB 13.2' || widget.loadInAB == 'SIMPLE SPAN AB 13.2' || widget.loadInAB == 'FIXED SPAN AB 15.1' || widget.loadInAB == 'SIMPLE SPAN AB 15.1' || widget.loadInAB == 'FIXED SPAN AB 15.2' || widget.loadInAB == 'SIMPLE SPAN AB 15.2')  
                  ...[loading10Combination(selectedLoadABUnitW, loadABValueW,selectedLengthABUnitL, lengthABValueL)],

                  if (widget.loadInAB == 'FIXED SPAN AB 17.1' || widget.loadInAB == 'SIMPLE SPAN AB 17.1' || widget.loadInAB == 'FIXED SPAN AB 17.2' || widget.loadInAB == 'SIMPLE SPAN AB 17.2' ) 
                  ...[loading17Combination(selectedLoadABUnitW, loadABValueW,selectedLoadABUnitW2, loadABValueW2, selectedLengthABUnitL, lengthABValueL)],

                  if (widget.loadInAB == 'FIXED SPAN AB 18' || widget.loadInAB == 'SIMPLE SPAN AB 18') 
                  ...[loading18Combination(selectedMomentABUnit, momentABValue, selectedLoadABUnitW, loadABValueW, selectedLengthABUnitK1, lengthABValueK1)],

                  addVerticalSpace(10),
                  const Divider(),
                  const Text(
                    'Span BC:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(10),

                  if (widget.loadInBC == 'FIXED SPAN BC 1' || widget.loadInBC == 'FIXED SPAN BC 1') 
                  ...[loading1Combination(selectedLoadBCUnitP, loadBCValueP, selectedLengthBCUnitL, lengthBCValueL, selectedLengthBCUnitA, lengthBCValueA)],

                  if (widget.loadInBC == 'FIXED SPAN BC 2' || widget.loadInBC == 'FIXED SPAN BC 2' || widget.loadInBC == 'FIXED SPAN BC 3' || widget.loadInBC == 'FIXED SPAN BC 3' || widget.loadInBC == 'FIXED SPAN BC 4' || widget.loadInBC == 'FIXED SPAN BC 4') 
                  ...[loading2Combination(selectedLoadBCUnitP, loadBCValueP,selectedLengthBCUnitL, lengthBCValueL)],

                  if (widget.loadInBC == 'FIXED SPAN BC 5' || widget.loadInBC == 'SIMPLE SPAN BC 5' || widget.loadInBC == 'FIXED SPAN BC 6.1' || widget.loadInBC == 'SIMPLE SPAN BC 6.1' || widget.loadInBC == 'FIXED SPAN BC 6.2' || widget.loadInBC == 'SIMPLE SPAN BC 6.2') 
                  ...[loading5Combination(selectedLoadBCUnitW, loadBCValueW,selectedLengthBCUnitL, lengthBCValueL)],

                  if (widget.loadInBC == 'FIXED SPAN BC 7.1' || widget.loadInBC == 'SIMPLE SPAN BC 7.1' || widget.loadInBC == 'FIXED SPAN BC 7.2' || widget.loadInBC == 'SIMPLE SPAN BC 7.2' || widget.loadInBC == 'FIXED SPAN BC 8' || widget.loadInBC == 'SIMPLE SPAN BC 8' || widget.loadInBC == 'FIXED SPAN BC 9' || widget.loadInBC == 'SIMPLE SPAN BC 9' || widget.loadInBC == 'FIXED SPAN BC 14.1' || widget.loadInBC == 'SIMPLE SPAN BC 14.1' || widget.loadInBC == 'FIXED SPAN BC 14.2' || widget.loadInBC == 'SIMPLE SPAN BC 14.2' || widget.loadInBC == 'FIXED SPAN BC 16.1' || widget.loadInBC == 'SIMPLE SPAN BC 16.1' || widget.loadInBC == 'FIXED SPAN BC 16.2' || widget.loadInBC == 'SIMPLE SPAN BC 16.2') 
                  ...[loading7Combination(selectedLoadBCUnitW, loadBCValueW,selectedLengthBCUnitL, lengthBCValueL, selectedLengthBCUnitK, lengthBCValueK)],

                  if (widget.loadInBC == 'FIXED SPAN BC 10.1' || widget.loadInBC == 'SIMPLE SPAN BC 10.1' || widget.loadInBC == 'FIXED SPAN BC 10.2' || widget.loadInBC == 'SIMPLE SPAN BC 10.2' || widget.loadInBC == 'FIXED SPAN BC 11' || widget.loadInBC == 'SIMPLE SPAN BC 11' || widget.loadInBC == 'FIXED SPAN BC 12' || widget.loadInBC == 'SIMPLE SPAN BC 12' || widget.loadInBC == 'FIXED SPAN BC 13.1' || widget.loadInBC == 'SIMPLE SPAN BC 13.1' || widget.loadInBC == 'FIXED SPAN BC 13.2' || widget.loadInBC == 'SIMPLE SPAN BC 13.2' || widget.loadInBC == 'FIXED SPAN BC 15.1' || widget.loadInBC == 'SIMPLE SPAN BC 15.1' || widget.loadInBC == 'FIXED SPAN BC 15.2' || widget.loadInBC == 'SIMPLE SPAN BC 15.2')  
                  ...[loading10Combination(selectedLoadBCUnitW, loadBCValueW,selectedLengthBCUnitL, lengthBCValueL)],

                  if (widget.loadInBC == 'FIXED SPAN BC 17.1' || widget.loadInBC == 'SIMPLE SPAN BC 17.1' || widget.loadInBC == 'FIXED SPAN BC 17.2' || widget.loadInBC == 'SIMPLE SPAN BC 17.2' ) 
                  ...[loading17Combination(selectedLoadBCUnitW, loadBCValueW,selectedLoadBCUnitW2, loadBCValueW2, selectedLengthBCUnitL, lengthBCValueL)],
                  
                  if (widget.loadInBC == 'FIXED SPAN BC 18' || widget.loadInBC == 'SIMPLE SPAN BC 18') 
                  ...[loading18Combination(selectedMomentBCUnit, momentBCValue, selectedLoadBCUnitW, loadBCValueW, selectedLengthBCUnitK1, lengthBCValueK1)],

                ],
              ),
            ),
          ),
        ));
  }
}
