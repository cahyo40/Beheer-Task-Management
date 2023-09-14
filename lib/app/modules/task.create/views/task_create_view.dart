import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_create_controller.dart';

class TaskCreateView extends GetView<TaskCreateController> {
  const TaskCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TaskCreateView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TaskCreateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
