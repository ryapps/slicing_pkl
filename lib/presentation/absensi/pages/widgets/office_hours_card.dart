import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/absensi_controller.dart';

class OfficeHoursCard extends StatelessWidget {
  final String officeStart;
  final String officeEnd;
  const OfficeHoursCard({super.key, required this.officeStart, required this.officeEnd});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Office Hours",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54)),
        const SizedBox(height: 4),
        Text(
            "$officeStart  -  $officeEnd",
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
