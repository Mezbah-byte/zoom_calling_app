import 'package:get/get.dart';
import 'package:zoom_calling_app/features/auth/presentation/controllers/auth_controller.dart';
import 'package:zoom_calling_app/features/user/presentation/controllers/user_controller.dart';
import 'package:zoom_calling_app/features/video_call/presentation/controllers/video_call_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<VideoCallController>(() => VideoCallController());
  }
}
