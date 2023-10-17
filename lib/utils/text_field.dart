import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextFormField InputTextField(
    String hint, String label, Icon icon, String type) {
  String? Function(String?)? validator;

  if (type == 'phone') {
    validator = (value) {
      if (value!.isEmpty || !RegExp(r'^09\d{7,9}$').hasMatch(value)) {
        return "Invaild phone number";
      } else {
        return null;
      }
    };
  } else if (type == 'username') {
    validator = (value) {
      if (value!.isEmpty || !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
        return "Invaild Name";
      } else {
        return null;
      }
    };
  }
  return TextFormField(
    validator: validator,
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
