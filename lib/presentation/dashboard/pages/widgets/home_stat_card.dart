import 'package:flutter/material.dart';

class HomeStatCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final Color iconColor;

  const HomeStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Image.asset('assets/icon/$icon.png',width: 24,height: 24,color: iconColor,),
              const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [          
              Text(title, style: const TextStyle(fontSize: 14, color: Colors.black54)),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
