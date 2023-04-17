import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _backgroundCover(context),
        _boxForm(context),
        _buttonBack(),
        Column(
          children: [
            _imageCover(),
          ],
        )
      ],
    ));
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        color: Colors.amber);
  }

  Widget _imageCover() {
    return SafeArea(
      child: Container(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () => {},
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/img/user_profile.png'),
            radius: 60,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.25, left: 30, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
          ]),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textFieldEmail(),
            _textFieldName(),
            _textFieldLastName(),
            _textFieldPhoneNumber(),
            _textFieldPassword(),
            _textFieldConfirmPassword(),
            _buttonRegister()
          ],
        ),
      ),
    );
  }

  Widget _buttonBack() {
    return SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 30,),
            onPressed: () => Get.back(),
            color: Colors.white,

          ),
        )
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15)),
          onPressed: () => {},
          child: Text("REGISTRARSE", style: TextStyle(color: Colors.black))),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Correo electronico", prefixIcon: Icon(Icons.email)),
      ),
    );
  }

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration:
            InputDecoration(hintText: "Nombre", prefixIcon: Icon(Icons.person)),
      ),
    );
  }

  Widget _textFieldLastName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: "Nombre", prefixIcon: Icon(Icons.person_outline)),
      ),
    );
  }

  Widget _textFieldPhoneNumber() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: "Telefono", prefixIcon: Icon(Icons.phone)),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña", prefixIcon: Icon(Icons.lock)),
      ),
    );
  }

  Widget _textFieldConfirmPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña", prefixIcon: Icon(Icons.lock)),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
        margin: EdgeInsets.only(top: 40, bottom: 30),
        child: Text("INGRESA ESTA INFOMACIÓN"));
  }
}
