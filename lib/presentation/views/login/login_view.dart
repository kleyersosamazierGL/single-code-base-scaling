import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/login/widgets/login_mobile.dart';
import 'package:pets_app/presentation/views/login/widgets/login_web.dart';
import 'package:pets_app/widgets/adaptive_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AdaptiveLayout(
        mobileWidget: LoginMobile(), webWidget: LoginWeb());
  }
}
