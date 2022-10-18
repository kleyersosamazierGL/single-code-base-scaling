import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/home/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 74, horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 156,
                  height: 136,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Email',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
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
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Password',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
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
                const SizedBox(
                  height: 56,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00DA9F),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },
                  child: const SizedBox(
                    height: 48,
                    child: Center(
                      child: Text(
                        'Log in',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
