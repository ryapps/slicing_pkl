class AbsensiHistory {
  final String date;
  final String time;
  final bool isLate;
  final String? status;

  AbsensiHistory({
    required this.date,
    required this.time,
    this.isLate = false,
    this.status,
  });
}
