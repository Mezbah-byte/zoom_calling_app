import 'package:get/get.dart';
import 'package:zoom_calling_app/features/auth/presentation/pages/register_page.dart';
import 'package:zoom_calling_app/features/user/presentation/pages/user_list_page.dart';
import 'package:zoom_calling_app/features/video_call/presentation/pages/video_call_page.dart';


class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => RegisterPage()),
    GetPage(name: '/user_list', page: () => UserListPage()),
    GetPage(name: '/video_call', page: () => VideoCallPage()),
  ];
}
