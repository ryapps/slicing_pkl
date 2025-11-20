import 'package:flutter/material.dart';
import 'package:slicing_pkl/core/utils/theme/app_colors.dart';

class IzinHeader extends StatelessWidget {
  const IzinHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Blue curved background
        ClipPath(
          clipper: _HeaderClipper(),
          child: Container(
            height: 210,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff1e88e5), AppColors.primary],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Image.asset(
            'assets/images/spiral.png',
            height: 200,
            fit: BoxFit.contain,
          ),
        ),

        Positioned(
          top: 40,
          left: 16,
          child: IconButton(
            icon: const Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 26,
            ),
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(40, 40),
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.white),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),

        const Positioned(
          top: 90,
          left: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Izin",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Upload bukti kamu dan sertakan keterangan",
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height - 50)
      ..quadraticBezierTo(
        size.width / 2,
        size.height,
        size.width,
        size.height - 50,
      )
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
