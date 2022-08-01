import 'package:final_project_sanbercode/pages/login_page.dart';
import 'package:final_project_sanbercode/pages/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  
  static AuthController instance = Get.find();

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if(user == null) {
      Get.offAll(() => const LoginPage());
    } else {
      Get.offAll(() => const MainPage());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch(e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void logout() async {
    await auth.signOut();
  }
}