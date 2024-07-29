import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({required this.controller,required this.hint,required this.ispassword});
  TextEditingController controller;
  String hint;
  bool ispassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        style: const TextStyle(fontSize: 10),
        decoration: InputDecoration(
          hintText: hint,
        ),
        keyboardType: TextInputType.name,
        obscureText: ispassword,
        controller: controller,
      ),
    );
  }
}
