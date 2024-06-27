import 'package:flutter/material.dart';
import 'package:zego_cloud_tutorial/views/chat_list_page.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

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
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 100),
          const Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 50),
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
            onPressed: () async {
              await ZIMKit()
                  .connectUser(id: userId.text, name: username.text)
                  .then((value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatListPage()),
                );
              });
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
