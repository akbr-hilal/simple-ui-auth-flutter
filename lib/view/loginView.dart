import 'package:auth/utils/globalColors.dart';
import 'package:auth/view/registerView.dart';
import 'package:auth/view/widgets/btnFormGlobal.dart';
import 'package:auth/view/widgets/txtFormGlobal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(left: 40, top: 20, right: 40, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "LOGO",
                  style: TextStyle(
                      color: GlobalColors.textMainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                "Hi There!,",
                style: TextStyle(
                    color: GlobalColors.textMainColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please login with your account",
                style: TextStyle(
                    color: GlobalColors.textColorBlck,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 18),
              // Email input
              TxtFormGlobal(
                controller: userController,
                placeHolder: 'Your Email',
                textInputType: TextInputType.emailAddress,
                obscure: false,
              ),
              const SizedBox(height: 12),
              TxtFormGlobal(
                controller: passController,
                placeHolder: 'Your Password',
                textInputType: TextInputType.text,
                obscure: true,
              ),
              const SizedBox(height: 28),
              const BtnFormGlobal(nameBtn: 'Sign In'),
              const SizedBox(height: 48),
              const Text("Don't have an acoount ? "),
              InkWell(
                  onTap: () => {Get.to(RegisterView())},
                  child: Text("Sign Up",
                      style: TextStyle(
                          color: GlobalColors.textMainColor, fontSize: 20)))
            ],
          ),
        )),
      ),
    );
  }
}
