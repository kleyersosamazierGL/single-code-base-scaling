import 'package:flutter/material.dart';

class EmailTextBoxField extends StatelessWidget {
  const EmailTextBoxField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Email',
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
          cursorColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
