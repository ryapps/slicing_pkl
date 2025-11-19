import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/theme/app_colors.dart';

class DateRangeProjectTabSelector extends StatelessWidget {
  final int activeIndex;
  final Function(int) onTap;

  const DateRangeProjectTabSelector({
    super.key,
    required this.activeIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          _buildTab("Week", 0, context),
          const SizedBox(width: 10),
          _buildTab("Month", 1, context),
          const SizedBox(width: 10),
          _buildTab("Year", 2, context),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index, BuildContext context) {
    bool isActive = index == activeIndex;

    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => onTap(index),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    )
                  ]
                : [],
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.black : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
