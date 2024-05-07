import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your username',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text("Login")),
            )
          ]),
        ),
      ),
    );
  }
}
