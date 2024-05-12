// SignUp

import 'package:flutter/material.dart';
import 'package:study/screen/homescreen.dart';
import 'package:study/screen/login.dart';
import 'package:study/screen/signup.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signup() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic
      print("Username: ${_usernameController.text}");
      print("Password: ${_passwordController.text}");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
      // Navigate or show success dialog
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
                textAlign: TextAlign.start,
              ),
              // const SizedBox(height: 8),
              const Text(
                "Enter Your Details",
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  suffixIcon: Icon(Icons.person),
                  // border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email),
                  hintText: 'Enter your Emaol',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Date Of Birth',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_month),
                  hintText: 'Enter your Date Of Birth',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Date Of Birth';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.call),
                  hintText: 'Enter your Phone',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Phone No.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.password),
                  hintText: 'Enter your password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.password),
                  hintText: 'Enter your Confirm password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Confirm password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signup,
                child: const Text(
                  "Signup",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  primary: Colors.redAccent, // Text color
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Continue with"),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.window),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.apple),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
