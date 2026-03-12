import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final Icon prefixIcon;
  final bool isPassword;
  final Widget? suffixIcon;
  const CustomTextfield({
    super.key,
    required this.keyboardType,
    required this.hintText,
    required this.prefixIcon,
    required this.isPassword,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Material(
        elevation: 5,
        child: TextField(
          style: const TextStyle(color: Colors.black),
          keyboardType: keyboardType,
          textInputAction:
              isPassword == true ? TextInputAction.done : TextInputAction.next,
          obscureText: isPassword,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white10,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(1),
            ),
            prefixIcon: prefixIcon,
            hintText: hintText,
            suffixIcon: suffixIcon,
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            fillColor: Colors.white70,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          ),
        ),
      ),
    );
  }
}
