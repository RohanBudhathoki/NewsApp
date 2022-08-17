import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAuthTextField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final Function()? onTap;
  CommonAuthTextField({
    required this.hinttext,
    Key? key,
    required this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.h,
      width: 327.w,
      child: TextFormField(
        onTap: onTap ?? () {},
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontFamily: 'Mulish',
            height: 1.25,
            fontWeight: FontWeight.w600,
            color: Color(
              0xffBEBEBE,
            ),
          ),
          contentPadding: EdgeInsets.fromLTRB(14.w, 12.h, 0.w, 12.h),
          fillColor: const Color(0xffFFFFFF),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
        ),
      ),
    );
  }
}
