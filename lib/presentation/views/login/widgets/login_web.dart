import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/presentation/views/login/widgets/email_text_box_field.dart';
import 'package:pets_app/presentation/views/login/widgets/login_button.dart';
import 'package:pets_app/presentation/views/login/widgets/password_text_box_field.dart';
import 'package:pets_app/presentation/views/login/widgets/pets_app_logo.dart';
import 'package:pets_app/widgets/responsive_widget.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({super.key});

  @override
  Widget build(BuildContext context) {
    const Size size = Size(312, 600);
    return const ResponsiveWidget(
        smallWidget: ResponsiveLogin(
          size: Size(248, 600),
        ),
        mediumWidget: ResponsiveLogin(
          size: size,
        ),
        largeWidget: ResponsiveLogin(
          size: size,
        ),
        extraLargeWidget: ResponsiveLogin(size: size));
  }
}

class ResponsiveLogin extends StatelessWidget {
  const ResponsiveLogin({
    super.key,
    required this.size,
  });

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PetsAppColor.purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width,
              height: size.height,
              padding: const EdgeInsets.symmetric(vertical: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
