import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:login_screen/constants/colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login screen",
        initialRoute: AppPages.INITIAL,
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          buttonTheme: const ButtonThemeData(
            buttonColor: AppColors.button,
            
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: AppColors.text),
          ),
        ),
        getPages: AppPages.routes,
      ),
    ),
  );
}
