import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Makes button take full width of its container
      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: AppColors.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.r),
          ),
          padding: padding,
        ),
        child: child??Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
