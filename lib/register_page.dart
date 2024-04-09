import 'package:flutter/material.dart';
import 'package:pennywise/components/button.dart';
import 'package:pennywise/components/textField.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Image.asset("images/pennywise_logo.png", width: 200),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffeeb365),
      ),

      // Setting Background color
      backgroundColor: Colors.grey[300],

      // Creating Area between to insert Login
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 200),

              Container(
                alignment: Alignment.center,
                width: 390,
                height: 290,
                decoration: BoxDecoration(
                  color: const Color(0xffffe4d0),
                  borderRadius: BorderRadius.circular(20),
                ),
                // LOGIN Text
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment(-0.74, 0.0),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),

                    const SizedBox(height: 7),

                    // Username TextField
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    // Password Field
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    // Confirm Password Box
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Confirm Password',
                      obscureText: true,
                    ),
                  ],
                ),
              ),

              // Register button
              const SizedBox(height: 60),

              const Button(
                buttonName: "Register",
              ),

              const SizedBox(height: 30),

              // Line
              const Divider(
                color: Colors.black,
                thickness: 2,
                indent: 25,
                endIndent: 25,
              ),

              // Register Button
              const SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("Already Have an Account?"),
                      SizedBox(height: 1),
                      Text("Sign-in/Login"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
