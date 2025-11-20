import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/absensi_history.dart';
import '../../controllers/absensi_controller.dart';
import 'absensi_history_item.dart';

class AbsensiHistorySection extends StatelessWidget {
  final List<AbsensiHistory> history;
  const AbsensiHistorySection({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Absensi Telat History",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("Tanggal"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey.shade700,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
                
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              icon: Icon(Icons.calendar_month, size: 20),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          children: history
              .map((item) => AbsensiHistoryItem(data: item))
              .toList(),
        ),
      ],
    );
  }
}
