import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_calling_app/config/routes.dart';
import 'package:zoom_calling_app/features/auth/presentation/pages/register_page.dart';
import 'config/firebase_config.dart';
import 'config/zoom_config.dart';
import 'core/bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfig.initialize();
  await ZoomConfig.initialize();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zoom Calling App',
      initialBinding: AppBindings(),
      getPages: AppRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
    );
  }
}
