import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


// 
extension SizedBoxExt on num {
  Widget get sH => SizedBox(
        height: toDouble().h,
      );
  Widget get sW => SizedBox(
        width: toDouble().w,
      );
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
