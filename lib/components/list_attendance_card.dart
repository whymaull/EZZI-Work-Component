import 'package:flutter/material.dart';

class AttendanceEmployeeList extends StatelessWidget {
  final String attendanceDate;
  final String checkInTime;
  final String checkOutTime;
  TextStyle? styleCardText;

  AttendanceEmployeeList({
    super.key,
    required this.attendanceDate,
    required this.checkInTime,
    required this.checkOutTime,
    this.styleCardText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(6, 0, 6, 0),
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0x48000000),
              offset: Offset(0.0, 1.0),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    attendanceDate,
                    style: styleCardText,
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("In Time : $checkInTime"),
                  Text("Out Time : $checkOutTime"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
