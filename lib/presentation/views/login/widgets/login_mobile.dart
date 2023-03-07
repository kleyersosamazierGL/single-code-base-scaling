import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/presentation/views/home/home_view.dart';
import 'package:pets_app/presentation/views/login/widgets/email_text_box_field.dart';
import 'package:pets_app/presentation/views/login/widgets/login_button.dart';
import 'package:pets_app/presentation/views/login/widgets/password_text_box_field.dart';
import 'package:pets_app/presentation/views/login/widgets/pets_app_logo.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PetsAppColor.purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                PetsAppLogo(),
                SizedBox(
                  height: 32,
                ),
                EmailTextBoxField(),
                SizedBox(
                  height: 24,
                ),
                PasswordTextBoxField(),
                SizedBox(
                  height: 56,
                ),
                LoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
