import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../core/dio_client.dart';
import '../../../../data/providers/user_service.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DioClient().dio);
    Get.lazyPut(() => UserService(Get.find<Dio>()));
    Get.lazyPut<HomeController>(
      () => HomeController(),

    );
  }
}
