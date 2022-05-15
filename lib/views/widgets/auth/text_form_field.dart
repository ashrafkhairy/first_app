import 'package:flutter/material.dart';

class AuthTextFormfield extends StatelessWidget {
  const AuthTextFormfield(
      {required this.controller,
      required this.prefixicon,
      required this.suffixicon,
      required this.hinttext,
      required this.validator,
      required this.obscuretext,
      Key? key})
      : super(key: key);
  final TextEditingController controller;
  final bool obscuretext;
  final Function validator;
  final Widget prefixicon;
  final Widget suffixicon;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        controller: controller,
        obscureText: obscuretext,
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            suffixIcon: suffixicon,
            hintText: hinttext,
            hintStyle: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            filled: true,
            fillColor: Colors.grey.shade200,
            prefixIcon: prefixicon),
        validator: (value) {
          return value;
        });
  }
}
