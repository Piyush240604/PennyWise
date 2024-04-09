import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pennywise/components/button.dart';
import 'package:pennywise/components/textField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

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
                height: 230,
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
                        "LOGIN",
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
                  ],
                ),
              ),

              // Log In button
              const SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/community');
                },
                child: const Button(
                  buttonName: "Log In",
                ),
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
                  Navigator.pushNamed(context, '/register');
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("Dont have an Account Yet?"),
                      SizedBox(height: 1),
                      Text("Sign-up/Register"),
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
