import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class UserListPage extends StatelessWidget {
  final UserController _controller = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: Obx(() {
        return ListView.builder(
          itemCount: _controller.userList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_controller.userList[index].email),
              onTap: () {
                // Zoom Call fun
              },
            );
          },
        );
      }),
    );
  }
}
