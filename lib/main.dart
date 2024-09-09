import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_whatsapp/firebase_options.dart';
import 'package:mini_whatsapp/screens/login_page.dart';
import 'package:mini_whatsapp/screens/verifiy_page.dart';
import 'package:mini_whatsapp/screens/welcom_screen.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}