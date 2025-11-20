import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadBox extends StatelessWidget {
  final VoidCallback onTap;
  const UploadBox({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: DottedBorder(
        color: Colors.grey,
        strokeWidth: 1.5,
        dashPattern: [6, 4], // 6 = panjang garis, 4 = jarak titik
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.upload_file,
                    color: Colors.purple,
                    size: 28,
                  ),
                ),
                
                const SizedBox(height: 10),
                
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black87),
                    children: [
                      TextSpan(
                        text: "Click to Upload",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.outfit().fontFamily,
                        ),
                      ),
                      TextSpan(text: " or drag and drop", style: TextStyle(fontFamily: GoogleFonts.outfit().fontFamily)),
                    ],
                  ),
                ),
                
                const SizedBox(height: 5),
                Text(
                  "(Max. File size: 25 MB)",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
