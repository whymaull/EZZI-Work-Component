import 'package:ezziwork_component/components/list_attendance_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text('EZZI Work Component'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text("HR Page"),
            AttendanceEmployeeList(
              attendanceDate: "24-05-2002",
              checkInTime: "09.00",
              checkOutTime: "18.00",
            ),
          ],
        ),
      ),
    );
  }
}
