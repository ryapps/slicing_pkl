import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_pkl/core/utils/theme/app_colors.dart';

import '../controllers/information_field_controller.dart';
import '../controllers/upload_izin_controller.dart';
import '../widgets/izin_header.dart';
import '../widgets/upload_box.dart';
import '../widgets/information_field.dart';
import '../widgets/submit_button.dart';

class UploadIzinPage extends StatelessWidget {
  const UploadIzinPage({super.key});

  @override
  Widget build(BuildContext context) {
    final uploadController = Get.find<UploadIzinController>();
    final infoController = Get.find<InformationFieldController>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IzinHeader(),
            const SizedBox(height: 5),

            // Title
            const Text(
              "Upload Bukti",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),
            const Text(
              "Add your absence request",
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),

            const SizedBox(height: 10),

            // Upload Box terhubung dengan controller
            UploadBox(onTap: uploadController.pickFile),

            const SizedBox(height: 10),

            // 🎯 Menampilkan file yang dipilih
            Obx(() {
              if (uploadController.selectedFileName.isEmpty) {
                return const SizedBox(); // tidak tampil apapun
              }
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.insert_drive_file, color: Colors.blue),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        uploadController.selectedFileName.value,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),

            const SizedBox(height: 15),
            Obx(() => InformationField(
              controller: infoController.infoController,
              isValid: infoController.isValid.value,
              textLength: infoController.textLength.value,
              onTextChanged: infoController.onTextChanged,
            )),

            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: const SubmitButton(),
      ),
    );
  }
}
