import 'package:flutter/material.dart';
import '../../../../core/config/status_absensi.dart';
import '../../../../data/models/absensi_history.dart';

class AbsensiHistoryItem extends StatelessWidget {
  final AbsensiHistory data;

  const AbsensiHistoryItem({super.key, required this.data});

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(data.date, style: const TextStyle(fontSize: 16))),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.time,
                    style: TextStyle(
                      color: StatusAbsensi.getStatusColor(data),
                      fontWeight: data.isLate ? FontWeight.bold : FontWeight.normal,
                      fontSize: 16
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(height: 20),
      ],
    );
  }
}
