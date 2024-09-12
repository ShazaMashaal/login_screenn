import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_screen/utils/Validation.dart';

import '../../../../data/providers/user_service.dart';

class HomeController extends GetxController {
  final UserService _userService = Get.find<UserService>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  Future<void> login() async {
    errorMessage.value='';
    if(isLoading.value)return;
    isLoading.value = true;
    try {
      if(!Validation.isValidEmail(email.text)){errorMessage.value="Enter valid email";
      return;
      }
      final response = await _userService.login(email.text, password.text);
      print('Login successful: ${response.data}');
      Get.snackbar("You logged in successfully", 'Your token is${response.data["token"]}');
    } catch (e) {
      errorMessage.value = 'Wrong Data';
    } finally {
      isLoading.value = false;
      FocusScope.of(Get.context!).unfocus();
    }
  }
}
