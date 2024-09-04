import 'package:get/get.dart';
import '../../domain/auth_usecases.dart';

class AuthController extends GetxController {
  final AuthUseCases _authUseCases = AuthUseCases();

  Future<void> register(String email, String password) async {
    try {
      await _authUseCases.register(email, password);
      Get.snackbar('Success', 'Registration Successful');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> login(String email, String password) async {
    try {
      await _authUseCases.login(email, password);
      Get.snackbar('Success', 'Login Successful');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> logout() async {
    await _authUseCases.logout();
  }
}
