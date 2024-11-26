import 'package:flutter/material.dart';
import 'package:sjlchatapp/components/my_textfield.dart';

import '../components/my_button.dart';

class LoginPage extends StatelessWidget {
  //controller let us have what the user types for use
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paswdController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  //login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50),
            //welcome
            Text(
              "Welcome back you've been missed dearly",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),
            //email
            MyTextField(
              hintText: 'email',
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),
            //email
            MyTextField(
              hintText: 'password',
              obscureText: true,
              controller: _paswdController,
            ),

            const SizedBox(height: 10),
            //login
            MyButton(
              text: 'LOGIN',
              onTap: login,
            ),

            const SizedBox(height: 25),
            //register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
