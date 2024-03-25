import 'package:amdm_calculator/utils/helper_widget_function.dart';
import 'package:flutter/material.dart';

class InfoAlert extends StatelessWidget {
  final String text;

  const InfoAlert({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.info, size: 40, color: Colors.blue,),
          addHorizontalSpace(8),
          Text(
            text,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
