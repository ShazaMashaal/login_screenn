import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_screen/constants/images.dart';
import 'package:login_screen/widgets/shared/custom_button.dart';
import 'package:login_screen/widgets/shared/custom_test_field.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Unfocus any active input field
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    AppImages.gurujiLogoPNG,
                    width: 189.w,
                    height: 116.h,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28.sp),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "Please login to your account.",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18.sp),
                          ),
                          SizedBox(
                            height: 26.h,
                          ),
                          Obx(() {
                            return CustomTextField(
                              controller: controller.email,
                              hintText: "Email Address",
                              suffixIcon: AppImages.mail,
                              errorText: controller.errorMessage.value.isEmpty
                                  ? null
                                  : controller.errorMessage.value,
                            );
                          }),
                          SizedBox(
                            height: 20.h,
                          ),
                          Obx(() {
                            return CustomTextField(
                              controller: controller.password,
                              obscureText: true,
                              hintText: "Password",
                              suffixIcon: AppImages.lock,
                              errorText: controller.errorMessage.value.isEmpty
                                  ? null
                                  : controller.errorMessage.value,
                            );
                          }),
                          SizedBox(
                            height: 20.h,
                          ),
                          Obx(() => CustomButton(
                              text: "LOGIN",
                              onPressed: () {
                                controller.login();
                              },
                              child: controller.isLoading.value
                                  ? const CircularProgressIndicator()
                                  : const Text('LOGIN')))
                        ],
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
