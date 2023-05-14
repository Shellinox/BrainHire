import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../pages/home_screen.dart';

class FirebaseController extends GetxController {
  static FirebaseController get instance => Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _firebaseUser = Rxn<User>();
  String? get user => _firebaseUser.value?.email;

  @override
  void onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(String FullName, String Email, String Password) async {
    await _auth
        .createUserWithEmailAndPassword(email: Email, password: Password)
        .then((value) {
      Get.off(const HomeScreen());
    }).onError((error, stackTrace) {
      Get.snackbar("title", error.toString());
    });
  }

  void login(String Email, String Password) async {
    _auth
        .signInWithEmailAndPassword(email: Email, password: Password)
        .then((value) => Get.to(const HomeScreen()))
        .onError((error, stackTrace) {
      Get.snackbar("title", error.toString());
    });
  }

  void signOut() {}
}
