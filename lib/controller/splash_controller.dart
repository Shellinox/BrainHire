import 'package:get/get.dart';
import '../pages/login_screen.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();
  @override
  void onReady() {
    super.onReady();
     Future.delayed(Duration(seconds: 3),(){
      Get.off( LoginScreen());
     });
  }
  }
   