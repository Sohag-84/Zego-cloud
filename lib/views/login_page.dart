import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final userId = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: ListView(
        children: [
          TextFormField(
            controller: username,
            decoration: const InputDecoration(
              labelText: "Username",
              hintText: "Username",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: userId,
            decoration: const InputDecoration(
              labelText: "Username",
              hintText: "Username",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {},
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
