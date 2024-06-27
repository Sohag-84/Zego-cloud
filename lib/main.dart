import 'package:flutter/material.dart';
import 'package:zego_cloud_tutorial/config/app_secret.dart';
import 'package:zego_cloud_tutorial/views/home_page.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

void main() async {
  await ZIMKit().init(
    appID: AppSecret.appId,
    appSign: AppSecret.appSign,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zego-Cloud',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
