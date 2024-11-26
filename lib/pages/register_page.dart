import 'package:flutter/material.dart';
import 'package:sjlchatapp/components/my_button.dart';

import '../components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  //controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _paswdController = TextEditingController();
  final TextEditingController _confirmPaswdController = TextEditingController();

  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  //register method
  void register() {}

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

            //register message
            Text(
              'Hey There, Lets create an account!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            //email
            MyTextField(
              hintText: 'enter your email',
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),
            //password
            MyTextField(
              hintText: 'enter a password',
              obscureText: true,
              controller: _paswdController,
            ),

            const SizedBox(height: 10),
            //confirm password
            MyTextField(
              hintText: 'confirm your password',
              obscureText: true,
              controller: _confirmPaswdController,
            ),
            const SizedBox(height: 10),

            //button
            MyButton(text: 'Register', onTap: register),

            const SizedBox(height: 10),
            //have an account message
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account already? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login",
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
