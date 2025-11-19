import 'package:flutter/material.dart';

class HomeTabSelector extends StatelessWidget {
  final int activeIndex;
  final Function(int) onTap;

  const HomeTabSelector({
    super.key,
    required this.activeIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        children: [
          _buildTab("Home", 0, context),
          const SizedBox(width: 10),
          _buildTab("Jurnal", 1, context),
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
            color: isActive ? Theme.of(context).primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
