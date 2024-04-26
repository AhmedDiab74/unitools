// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChange,
      this.hintText,
      this.startIcon,
      this.endIcon,
      this.inputColor = Colors.black,
      this.hintColor,
      this.isPassword = false,
      this.onSubmitted,
      this.borderRadius = 6,
      this.label,
      this.width = 300,
      this.controller,
      this.maxLines,
      this.isNumber = false});
  final String? hintText, label;
  final IconData? startIcon, endIcon;
  final Color? inputColor, hintColor;
  final bool isPassword, isNumber;
  final Function(String)? onChange, onSubmitted;
  final TextEditingController? controller;
  final double width, borderRadius;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
          obscureText: isPassword,
          enableSuggestions: !isPassword,
          textAlign: TextAlign.right,
          autocorrect: !isPassword,
          maxLines:maxLines,
          controller: controller ?? TextEditingController(),
          onFieldSubmitted: onSubmitted,
          validator: (data) {
            if (data!.isEmpty) {
              return "Required";
            }
            return null;
          },
          onChanged: onChange,
          keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
          style: TextStyle(
            color: inputColor,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD5D5D580)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(borderRadius)),
            hintStyle: TextStyle(color: hintColor ?? Colors.grey, fontSize: 20),
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
          )),
    );
  }
}
