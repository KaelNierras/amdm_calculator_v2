import 'package:flutter/material.dart';

import '../utils/helper_widget_function.dart';

class CustomTextfieldWithDropdown extends StatefulWidget {
  final String label;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final ValueChanged<String> onTextChanged;

  const CustomTextfieldWithDropdown(
      {super.key,
      required this.label,
      required this.items,
      required this.onChanged,
      required this.onTextChanged});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextfieldWithDropdownState createState() =>
      _CustomTextfieldWithDropdownState();
}

class _CustomTextfieldWithDropdownState
    extends State<CustomTextfieldWithDropdown> {
  String? dropdownValue;
  final textController = TextEditingController();

  double convertMeterToFeet(double meter) {
    const double feetPerMeter = 3.28084;
    return meter * feetPerMeter;
  }

  double convertFeetToMeter(double feet) {
    const double meterPerFeet = 0.3048;
    return feet * meterPerFeet;
  }

  double convertKilonewtonToPound(double kilonewton) {
    const double poundPerKilonewton = 224.808943;
    return kilonewton * poundPerKilonewton;
  }

  double convertPoundToKilonewton(double pound) {
    const double kilonewtonPerPound = 0.00444822;
    return pound * kilonewtonPerPound;
  }

  double convertKilonewtonMeterToPoundFeet(double kilonewtonMeter) {
    const double poundFeetPerKilonewtonMeter = 737.562149;
    return kilonewtonMeter * poundFeetPerKilonewtonMeter;
  }

  double convertPoundFeetToKilonewtonMeter(double poundFeet) {
    const double kilonewtonMeterPerPoundFeet = 0.00135582;
    return poundFeet * kilonewtonMeterPerPoundFeet;
  }

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items.first;
    textController.addListener(() {
      widget.onTextChanged(textController.text);
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Widget _buildTextField() {
  return Expanded(
    child: TextField(
      controller: textController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.label,
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

  Widget _buildDropdownMenu() {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue;
          if (dropdownValue != null) {
            double textFieldValue = double.tryParse(textController.text) ?? 0.0;
            if (dropdownValue == 'ft.') {
              double convertedValue = convertMeterToFeet(textFieldValue);
              textController.text = convertedValue.toString();
            } else if (dropdownValue == 'm')  {
              double convertedValue = convertFeetToMeter(textFieldValue);
              textController.text = convertedValue.toString();
            } else if (dropdownValue == 'kN')  {
              double convertedValue = convertPoundToKilonewton(textFieldValue);
              textController.text = convertedValue.toString();
            } else if (dropdownValue == 'lb.')  {
              double convertedValue = convertKilonewtonToPound(textFieldValue);
              textController.text = convertedValue.toString();
            } else if (dropdownValue == 'kN.m')  {
              double convertedValue = convertPoundFeetToKilonewtonMeter(textFieldValue);
              textController.text = convertedValue.toString();
            } else if (dropdownValue == 'lb.ft')  {
              double convertedValue = convertKilonewtonMeterToPoundFeet(textFieldValue);
              textController.text = convertedValue.toString();
          }
      }});
        widget.onChanged(newValue);
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTextField(),
        addHorizontalSpace(10),
        _buildDropdownMenu(),
      ],
    );
  }
}
