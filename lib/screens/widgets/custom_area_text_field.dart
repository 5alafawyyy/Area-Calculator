import 'package:flutter/material.dart';

class AreaTextField extends StatelessWidget {
  const AreaTextField({
    super.key,
    required this.controller,
    required this.hint,
  });

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        15.0,
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.green[700],
          fontWeight: FontWeight.w300,
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          prefixIcon: (hint == 'Width')
              ? const Icon(
                  Icons.border_bottom,
                )
              : const Icon(
                  Icons.border_left,
                ),
          filled: true,
          fillColor: Colors.grey[300],
          hintText: hint,
        ),
      ),
    );
  }
}
