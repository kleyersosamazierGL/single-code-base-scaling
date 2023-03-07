import 'package:flutter/widgets.dart';

class PetsAppLogo extends StatelessWidget {
  const PetsAppLogo({super.key, this.size = const Size(156, 136)});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      width: size.width,
      height: size.height,
    );
  }
}
