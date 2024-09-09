import 'package:flutter/material.dart';
import 'package:mini_whatsapp/screens/login_page.dart';
import 'package:mini_whatsapp/screens/welcom_screen.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}