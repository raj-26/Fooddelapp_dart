import 'package:flutter/material.dart';

import '../components/my_buttons.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // logo
            Icon(Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),


            const SizedBox(height: 25),
            // message, app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 25),
            // email textfeild
            MyTextField(
              controller: emailController,
              hintText: 'email',
              obscureText: false,
            ),

            const SizedBox(height: 25),
            // password textfeild
            MyTextField(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ),

            const SizedBox(height: 25),
            // password textfeild
            MyTextField(
              controller: passwordController,
              hintText: 'confirm password',
              obscureText: true,
            ),

            const SizedBox(height: 25),
            // sign in button
            MyButton(
              text: 'Sign In',
              onTap: () {},
            ),

            const SizedBox(height: 25),
            // not a member
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );;
  }
}