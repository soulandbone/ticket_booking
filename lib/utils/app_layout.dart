import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenSize() {
    return Get.height;
  }

  static getScreenHeight() {
    return Get.width;
  }

  static getScreenWidth() {
    return Get.width;
  }
}
