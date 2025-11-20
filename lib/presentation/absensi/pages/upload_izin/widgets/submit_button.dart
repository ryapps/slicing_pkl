import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/information_field_controller.dart';
import '../controllers/upload_izin_controller.dart';
import 'success_dialog.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final uploadController = Get.find<UploadIzinController>();
    final infoController = Get.find<InformationFieldController>();

    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          if (uploadController.selectedFileName.isEmpty) {
            Get.snackbar("Error", "Silahkan upload bukti dahulu");
            return;
          }

          if (!infoController.isValid.value) {
            Get.snackbar("Error", "Informasi minimal 150 karakter");
            return;
          }

          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const SuccessDialog(),
          );
        },
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff4A8CFF), Color(0xff1E62E9)],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              "UPLOAD",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
