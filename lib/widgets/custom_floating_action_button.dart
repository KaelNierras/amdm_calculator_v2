import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFloatingActionButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.blue,
      ),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}