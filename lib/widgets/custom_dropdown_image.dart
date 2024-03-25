// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../utils/helper_widget_function.dart';

class CustomDropdownImage extends StatefulWidget {
  final String label;
  final List<String> items; // This should be a list of image URLs
  final ValueChanged<List<String?>> onChanged; // Changed to List<String?>
  final String initalValue;

  const CustomDropdownImage({super.key, required this.label, required this.items, required this.onChanged, required this.initalValue});

  @override
  _CustomDropdownImageState createState() => _CustomDropdownImageState();
}

class _CustomDropdownImageState extends State<CustomDropdownImage> {
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
                        child: Row(
                          children: [
                            Image.asset(item, width: 50, height: 50), // Adjust the size as needed
                            const SizedBox(width: 10), // Add some spacing between the image and the text
                            Text(item.split('/').last.replaceAll('.png', '')), // Display the filename
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedItem = value;
                      });
                      String displayFileName = value!.split('/').last.replaceAll('.png', '');
                      widget.onChanged([value, displayFileName]); // Pass both values as a list
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