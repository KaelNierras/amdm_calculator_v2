// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../utils/helper_widget_function.dart';

class CustomDropdownText extends StatefulWidget {
  final String label;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String initalValue;

  const CustomDropdownText({super.key, required this.label, required this.items, required this.onChanged, required this.initalValue});

  @override
  _CustomDropdownTextState createState() => _CustomDropdownTextState();
}

class _CustomDropdownTextState extends State<CustomDropdownText> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        addVerticalSpace(8),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: (selectedItem == null || selectedItem!.isEmpty) ? widget.initalValue : selectedItem,
                    items: widget.items.map((item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedItem = value;
                      });
                      widget.onChanged(value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}