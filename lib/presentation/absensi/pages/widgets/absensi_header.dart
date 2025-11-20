import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_pkl/core/utils/theme/app_colors.dart';
import 'package:slicing_pkl/presentation/absensi/pages/widgets/absensi_action_buttons.dart';
import 'package:slicing_pkl/presentation/absensi/pages/widgets/office_hours_card.dart';

class AbsensiHeader extends StatelessWidget {
  final String currentTime;
  final String currentDate;
  final String officeStart ;
  final String officeEnd;
  final VoidCallback onAbsenPressed;
  final VoidCallback onIzinPressed;


  const AbsensiHeader({super.key, required this.currentTime, required this.currentDate, required this.officeStart, required this.officeEnd, required this.onAbsenPressed, required this.onIzinPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Absensi",
              style: TextStyle(color: Colors.black ,fontSize: 14, fontWeight: FontWeight.bold)),
          Text(currentTime,
              style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
          Text(currentDate,
              style: const TextStyle(color: Colors.black54, fontSize: 12)),
          SizedBox(height: 8),
          Divider(color: Colors.grey.shade200),
          SizedBox(height: 16),
          OfficeHoursCard(officeStart: officeStart, officeEnd: officeEnd),
          SizedBox(height: 16),
          AbsensiActionButtons(onAbsenPressed: onAbsenPressed, onIzinPressed: onIzinPressed),
        ],
      ),
    );
  }
}
