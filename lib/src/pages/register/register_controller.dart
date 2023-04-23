import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register(){
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String lastName = lastNameController.text.trim();
    String phoneNumber = phoneNumberController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();
    if(isValidForm(email, name, lastName, phoneNumber, password, confirmPassword)){

    }
  }

  bool isValidForm(String email,String name,String lastName,String phoneNumber,String password,String confirmPassword){
    if(email.isEmpty || name.isEmpty || lastName.isEmpty || phoneNumber.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debe ingresar todos los campos');
      return false;
    }
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario no valido', 'Revise email');
      return false;
    }
    if(password != confirmPassword){
      Get.snackbar('Formulario no valido', 'Las contraseñas no son iguales');
      return false;
    }
    return true;

  }

}