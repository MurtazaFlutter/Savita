import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hinText;
  final TextInputType textInputType;
  final FormFieldValidator formFieldValidator;
  final TextEditingController controller;
  final bool obSecure;

  const CustomTextField(
      {Key? key,
      required this.labelText,
      required this.formFieldValidator,
      required this.textInputType,
      required this.hinText,
      required this.controller,
      this.obSecure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      validator: formFieldValidator,
      obscureText: obSecure,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(color: Colors.white),
        ),
        label: Text(labelText),
        labelStyle: GoogleFonts.poppins(
          fontSize: 16.h,
          color: Colors.white,
        ),
        hintText: hinText,
        hintStyle: GoogleFonts.poppins(
          fontSize: 16.h,
          color: Colors.white70,
        ),
      ),
    );
  }
}
