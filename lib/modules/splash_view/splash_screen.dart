import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:roshini/constants/app_theme/app_color.dart';
import 'package:roshini/modules/home_page/home_page.dart';

import '../../controllers/splash_controller/splash_controllers.dart';
import '../login_view/login_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   var prefs = GetStorage();
  //   String? checkToken = prefs.read('token');
  //   print(checkToken);
  //   if (checkToken != null) {
  //     token = checkToken;
  //   }
  //   Timer(
  //       Duration(seconds: 6),
  //       token != ''
  //           ? () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) =>HomePage()))
  //           : () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => LoginScreen())));
  // }

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'lib/assets/images/JK_ROSHINI_png.png',
                    scale: 8,
                    //'lib/assets/images/roshini_logo_dummy.png',

                    // width: controller.animation!.value * 320,
                    // height: controller.animation!.value * 450,
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

