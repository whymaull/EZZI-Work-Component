// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UserCardHR extends StatelessWidget {
  final String employeeStatus;
  final String locationStatus;
  final String employeeFullName;
  TextStyle? employeeStatusTextStyle;
  TextStyle? locationStatusTextStyle;
  TextStyle? employeeFullNameTextStyle;

  UserCardHR({
    super.key,
    required this.employeeStatus,
    required this.locationStatus,
    required this.employeeFullName,
    this.employeeStatusTextStyle,
    this.locationStatusTextStyle,
    this.employeeFullNameTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 8,
            color: Color(0x48000000),
            offset: Offset(0, 1),
          )
        ],
        gradient: const LinearGradient(
          colors: [Color(0xFF4A5568), Color(0xFFC53030)],
          stops: [0, 1],
          begin: AlignmentDirectional(1, 1),
          end: AlignmentDirectional(-1, -1),
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Text(
                    employeeStatus,
                    style: employeeStatusTextStyle,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: Colors.white,
                      size: 24,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      locationStatus,
                      style: locationStatusTextStyle,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    width: 140,
                    height: 50,
                    decoration: const BoxDecoration(),
                    child: Text(
                      employeeFullName,
                      style: employeeFullNameTextStyle,
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.network(
                      '',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
