import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextFormField InputTextField(String hint, String label, Icon icon) {
  return TextFormField(
    // validator: ,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(width: 1),
      ),
      hintText: hint,
      labelText: label,
      suffixIcon: IconButton(
        icon: icon,
        onPressed: () {},
      ),
      hintStyle: TextStyle(
        fontSize: 14.r,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    ),
  );
}
