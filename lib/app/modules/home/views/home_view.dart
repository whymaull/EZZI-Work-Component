import 'package:ezziwork_component/components/hr_user_card.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "HR Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(21, 0, 21, 0),
                child: UserCardHR(
                  employeeStatus: "EZZI HO-Internship",
                  locationStatus: "Indonesia",
                  employeeFullName: "Wahyu Maulana Aditya",
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(14, 0, 14, 0),
                child: AttendanceEmployeeList(
                  attendanceDate: "24-05-2002",
                  checkInTime: "09.00",
                  checkOutTime: "18.00",
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(14, 0, 14, 0),
                child: AttendanceEmployeeList(
                  attendanceDate: "24-02-2024",
                  checkInTime: "09.00",
                  checkOutTime: "18.00",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Vacation Page",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
