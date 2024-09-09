

import 'package:flutter/material.dart';
import 'package:mini_whatsapp/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kbackgroundcolor,
        title: Text("Profile page"),
        centerTitle: true,
      ),
    );
  }
}