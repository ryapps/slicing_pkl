import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final String name;
  const HomeHeader({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Hello", style: TextStyle(color: Colors.white70, fontSize: 14)),
              const SizedBox(height: 4),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(0.1)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: (){}, icon: Image.asset('assets/icon/Notification.png',width: 24,height: 24,color: Colors.white,),
            )
        ],
      ),
    );
  }
}
