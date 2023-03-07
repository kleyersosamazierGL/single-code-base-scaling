import 'package:flutter/material.dart';

class PasswordTextBoxField extends StatelessWidget {
  const PasswordTextBoxField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Password',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        const TextField(
          style: TextStyle(color: Colors.white),
          obscureText: true,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
