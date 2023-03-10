import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roshini/controllers/otp_time_controller/otp_time_controller.dart';
import 'package:roshini/controllers/splash_controller/splash_controllers.dart';
import 'package:roshini/modules/otp/otp_page.dart';
import 'package:roshini/modules/otp_new/otp_new.dart';
import 'package:roshini/services/api_provider.dart';
import 'package:roshini/widget/circular_loader.dart';
import 'package:http/http.dart' as http;

class LoginMobileController extends GetxController {
  final getStorage = GetStorage();
  RxBool isLoading = false.obs;
  final GlobalKey<FormState> MobileLoginFormKey = GlobalKey(debugLabel: "MobileLoginFormKey");
  TextEditingController MobileOrEmail = TextEditingController();

  OtpTimerController _timeController = Get.put(OtpTimerController());


  void phoneemailApi() async {
    CallLoader.loader();
   final http.Response r = await ApiProvider.PhoneEmailApi("${MobileOrEmail.text}",);

    if (r.statusCode == 200) {
      CallLoader.hideLoader();
      // Get.to(() => OtpVerification());
      Get.to(() => OTPPhone());
    }
  }
  @override
  void onInit() {
    super.onInit();
    MobileOrEmail;
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    MobileOrEmail.dispose();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  String? validatePhone(String value) {
    if (value.length < 1) {
      return "provide valid Id";
    }
    return null;
  }

  void checkMobileLogin() {
    if (MobileLoginFormKey.currentState!.validate()) {
      phoneemailApi();
    }
    MobileLoginFormKey.currentState!.save();
  }
   login(){
    getStorage.write("id", 1);
    getStorage.write("name"," Rahul Kumar");
    Get.offAllNamed(Routes.HOME);
   }
}
