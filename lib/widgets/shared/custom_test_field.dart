import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText,errorText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? suffixIcon;

  const CustomTextField({
    super.key,
    this.controller,
    this.errorText,
    this.hintText = '',
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          errorText:errorText ,
          focusedBorder:  OutlineInputBorder(borderSide: const BorderSide(color: AppColors.button),borderRadius:BorderRadius.circular(26.r) ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: AppColors.textLight,
              fontWeight: FontWeight.normal,
              fontSize: 16.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.r),
          ),
          // prefixIcon: Image.asset(prefixIcon!,color: AppColors.secondary,) ,
          suffixIcon: Image.asset(
            suffixIcon!,
            color: AppColors.secondary,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 25.sp),
        ),
      ),
    );
  }
}
