import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

showLoadingDialogue({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) {
      return SizedBox(
        height: Get.width,
        child: Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: SizedBox(
            width: Get.width,
            height: Get.width,
            child: LoadingAnimationWidget.fourRotatingDots(
                color: Colors.blue, size: 80),
          ),
        ),
      );
    },
  );
}
