import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/information_field_controller.dart';

class InformationField extends StatelessWidget {
  final TextEditingController controller;
  final bool isValid;
  final int textLength;
  final Function(String) onTextChanged;
  const InformationField({super.key, required this.controller, required this.isValid, required this.textLength, required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Information",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),

         

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(
                  color: isValid ? Colors.grey.shade300 : Colors.red,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    controller: controller,
                    maxLines: 6,
                    onChanged: onTextChanged,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          "Jelaskan kenapa anda izin hari ini\nsertakan bukti yang akurat",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),

                  const SizedBox(height: 4),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "$textLength / 150 karakter",
                      style: TextStyle(
                        color: isValid ? Colors.grey : Colors.red,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )
          
        ],
      ),
    );
  }
}
