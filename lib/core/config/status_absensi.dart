import 'package:flutter/material.dart';

class StatusAbsensi {
  static Color getStatusColor(data) {
    if (data.status == "Izin") return Colors.orange;
    if (data.status == "Sakit") return Colors.green;
    if (data.isLate) return Colors.red;
    return Colors.black87;
  }
}
