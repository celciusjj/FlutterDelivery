import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void goToRegisterPage(){
    Get.toNamed('/register');
  }

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if(isValidForm(email, password)){

    }
  }

  bool isValidForm(String email, String password){
    if(email.isEmpty || password.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debe ingresar todos los campos');
      return false;
    }
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no valido', 'Revise email');
      return false;
    }
    return true;
  }
}